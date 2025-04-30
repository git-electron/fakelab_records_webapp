import 'package:fakelab_records_webapp/core/constants/mock.dart';
import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/extensions/object_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
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
}
