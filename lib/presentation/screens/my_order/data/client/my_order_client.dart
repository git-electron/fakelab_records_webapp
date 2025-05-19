import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../core/constants/mock.dart';
import '../../../../../core/constants/types.dart';
import '../../../../../core/domain/models/result/result.dart';
import '../../../../../core/extensions/object_extensions.dart';
import '../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../main.dart';

@injectable
class MyOrderClient {
  MyOrderClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  static const String _errorMessage = 'Failed to get order';
  final Result<Order> _notFoundResult = Result.error('Заказ не найден');

  Future<Result<Order>> getOrder(String orderId) async {
    if (isDevelopment) {
      final Order? mockOrder = Mock.getOrder(orderId);
      if (mockOrder != null) {
        return Result.success(mockOrder);
      } else {
        return _notFoundResult;
      }
    }

    try {
      final String path = 'orders/$orderId';

      final DataSnapshot snapshot = await ref.child(path).get();
      final bool isExists = snapshot.exists;

      if (!isExists) return _notFoundResult;

      final Json? json = snapshot.value.firebaseResponseToJson();

      logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return _notFoundResult;

      final Order order = Order.fromJson(json);
      return Result.success(order);
    } catch (error) {
      logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
