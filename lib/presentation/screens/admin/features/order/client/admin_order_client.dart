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
  }) async {
    // if (isDevelopment) {
    //   final Order? mockOrder = Mock.getOrder(order.id);
    //   if (mockOrder != null) {
    //     return Result.success(mockOrder.copyWith(status: status));
    //   } else {
    //     return Result.error('Не удалось изменить статус');
    //   }
    // }

    try {
      final DateTime now = DateTime.now();
      final Order updatedOrder = order.copyWith(
        status: status,
        statusHistory: [
          ...order.statusHistory,
          OrderStatusHistoryItem(status: status, dateChanged: now),
        ],
        dateChanged: now,
        filters: OrderFilters(
          userIdStatusType: order.filters.userIdStatusType.replaceFirst(
            order.status.name,
            status.name,
          ),
        ),
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
}
