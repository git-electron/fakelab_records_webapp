import 'package:collection/collection.dart';
import 'package:fakelab_records_webapp/core/constants/mock.dart';
import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/extensions/object_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_filters.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/status_history_item/order_status_history_item.dart';
import 'package:fakelab_records_webapp/main.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

@injectable
class AdminOrderClient {
  AdminOrderClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  Future<Result<Order>> getOrder(String orderId) async {
    if (isDevelopment) {
      final Order? mockOrder = Mock.getOrder(orderId);
      if (mockOrder != null) {
        return Result.success(mockOrder);
      } else {
        return Result.error('Заказ не найден');
      }
    }

    try {
      final String path = 'orders/$orderId';
      final DataSnapshot snapshot = await ref.child(path).get();
      final bool isExists = snapshot.exists;

      if (!isExists) return Result.error('Заказ не найден');

      final Json? json = snapshot.value.firebaseResponseToJson();

      logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return Result.error('Заказ не найден');

      final Order order = Order.fromJson(json);
      return Result.success(order);
    } catch (error) {
      logger.e('Failed to get order', error: error);
      return Result.error(error.toString());
    }
  }

  Future<Result<Order>> changeOrderStatus(
    OrderStatus status, {
    required Order order,
    double? totalCost,
    String? cancelReason,
  }) async {
    if (isDevelopment) {
      final Order? mockOrder = Mock.getOrder(order.id);
      if (mockOrder != null) {
        return Result.success(_updateOrderInfo(
          mockOrder,
          status: status,
          totalCost: totalCost,
        ));
      } else {
        return Result.error('Не удалось изменить статус');
      }
    }

    try {
      final Order updatedOrder = _updateOrderInfo(
        order,
        status: status,
        totalCost: totalCost,
        cancelReason: cancelReason,
      );

      final String path = 'orders/${order.id}';

      logger.i('''Realtime Database update request:
Path: $path
Data: $updatedOrder''');

      await ref.child(path).update(updatedOrder.toJson());

      return Result.success(updatedOrder);
    } catch (error) {
      logger.e('Failed to update order status', error: error);
      return Result.error(error.toString());
    }
  }

  Order _updateOrderInfo(
    Order order, {
    OrderStatus? status,
    double? totalCost,
    String? cancelReason,
  }) {
    final DateTime now = DateTime.now();

    final bool costFrom = totalCost != null ? false : order.costFrom;

    return order.copyWith(
      status: status ?? order.status,
      dateChanged: now,
      costFrom: costFrom,
      totalCost: totalCost ?? order.totalCost,
      services: totalCost != null
          ? order.services.map((service) {
              if (service.costFrom) {
                return service.copyWith(
                  costFrom: costFrom,
                  totalCost: totalCost -
                      (order.services
                          .where((service) => !service.costFrom)
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
                message: cancelReason,
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
