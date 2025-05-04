import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

@injectable
class AdminCreateOrderClient {
  AdminCreateOrderClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  Future<Result<Order>> createOrder(Order order) async {
    try {
      final String path = 'orders/${order.id}';

      logger.i('''Realtime Database create request:
Path: $path
Data: $order''');

      await ref.child(path).set(order.toJson());

      return Result.success(order);
    } catch (error) {
      logger.e('Failed to create order', error: error);
      return Result.error(error.toString());
    }
  }
}
