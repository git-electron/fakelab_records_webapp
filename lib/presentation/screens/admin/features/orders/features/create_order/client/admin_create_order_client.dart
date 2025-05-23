import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../../../../core/constants/mock.dart';
import '../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../../../main.dart';

@injectable
class AdminCreateOrderClient {
  AdminCreateOrderClient(this._ref, this._logger);

  final Logger _logger;
  final DatabaseReference _ref;

  static const String _errorMessage = 'Failed to create order';

  Future<Result<Order>> createOrder(Order order) async {
    if (isDevelopment) {
      Mock.orders.add(order);
      return Result.success(order);
    }

    try {
      final String path = 'orders/${order.id}';

      _logger.i('''Realtime Database create request:
Path: $path
Data: $order''');

      await _ref.child(path).set(order.toJson());

      return Result.success(order);
    } catch (error) {
      _logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
