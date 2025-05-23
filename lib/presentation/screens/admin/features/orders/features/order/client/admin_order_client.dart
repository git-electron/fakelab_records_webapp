import 'package:collection/collection.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../../../../core/constants/mock.dart';
import '../../../../../../../../core/constants/types.dart';
import '../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../core/extensions/object_extensions.dart';
import '../../../../../../../../features/my_orders/domain/models/order/filters/order_filters.dart';
import '../../../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../../../../../../features/my_orders/domain/models/order/status_history_item/order_status_history_item.dart';
import '../../../../../../../../main.dart';
import '../../../../staff/domain/models/staff_member.dart';

@injectable
class AdminOrderClient {
  AdminOrderClient(this._ref, this._logger);

  final Logger _logger;
  final DatabaseReference _ref;

  final Result<Order> _orderNotFountResult = Result.error('Заказ не найден');
  static const String _orderErrorMessage = 'Failed to get order';

  Future<Result<Order>> getOrder(String orderId) async {
    if (isDevelopment) {
      final Order? mockOrder = Mock.getOrder(orderId);
      if (mockOrder != null) {
        return Result.success(mockOrder);
      } else {
        return _orderNotFountResult;
      }
    }

    try {
      final String path = 'orders/$orderId';
      final DataSnapshot snapshot = await _ref.child(path).get();
      final bool isExists = snapshot.exists;

      if (!isExists) return _orderNotFountResult;

      final Json? json = snapshot.value.firebaseResponseToJson();

      _logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return _orderNotFountResult;

      final Order order = Order.fromJson(json);
      return Result.success(order);
    } catch (error) {
      _logger.e(_orderErrorMessage, error: error);
      return Result.error(error.toString());
    }
  }

  static const String _updateOrderErrorMessage = 'Failed to get order';

  Future<Result<Order>> updateOrder(
    Order order, {
    String? message,
    double? totalCost,
    OrderStatus? status,
    StaffMember? assignee,
  }) async {
    if (isDevelopment) {
      final Order? mockOrder = Mock.getOrder(order.id);
      if (mockOrder != null) {
        return Result.success(_updateOrderInfo(
          mockOrder,
          status: status,
          message: message,
          assignee: assignee,
          totalCost: totalCost,
        ));
      } else {
        return Result.error('Не удалось изменить заказ');
      }
    }

    try {
      final Order updatedOrder = _updateOrderInfo(
        order,
        status: status,
        message: message,
        assignee: assignee,
        totalCost: totalCost,
      );

      final String path = 'orders/${order.id}';

      _logger.i('''Realtime Database update request:
Path: $path
Data: $updatedOrder''');

      await _ref.child(path).update(updatedOrder.toJson());

      return Result.success(updatedOrder);
    } catch (error) {
      _logger.e(_updateOrderErrorMessage, error: error);
      return Result.error(error.toString());
    }
  }

  Order _updateOrderInfo(
    Order order, {
    String? message,
    double? totalCost,
    OrderStatus? status,
    StaffMember? assignee,
  }) {
    final DateTime now = DateTime.now();

    final bool costFrom = totalCost != null ? false : order.costFrom;

    return order.copyWith(
      status: status ?? order.status,
      dateChanged: now,
      costFrom: costFrom,
      totalCost: totalCost ?? order.totalCost,
      assignee: assignee ?? order.assignee,
      services: totalCost != null
          ? order.services.map((service) {
              if (service.type.costFrom) {
                return service.copyWith(
                  costFrom: costFrom,
                  totalCost: totalCost -
                      (order.services
                          .where((service) => !service.type.costFrom)
                          .map((service) => service.totalCost)
                          .sum),
                );
              }
              return service;
            }).toList()
          : order.services,
      statusHistory: status != null
          ? [
              ...order.statusHistory,
              OrderStatusHistoryItem(
                status: status,
                dateChanged: now,
                message: message,
              ),
            ]
          : order.statusHistory,
      filters: OrderFilters(
        userIdStatusType: status != null
            ? order.filters.userIdStatusType.replaceFirst(
                order.status.name,
                status.name,
              )
            : order.filters.userIdStatusType,
      ),
    );
  }
}
