import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/extensions/object_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/models/order/order.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

@injectable
class OrdersClient {
  OrdersClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  Future<Result<List<Order>>> getOrders(int userId) async {
    try {
      const String path = 'orders';
      final DataSnapshot snapshot = await ref
          .child(path)
          .orderByChild('customer/id')
          .equalTo(userId)
          .limitToFirst(8)
          .get();

      final Json? json = snapshot.value.firebaseResponseToJson();

      logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return Result.success([]);

      final List<Order> orders =
          json.values.map((order) => Order.fromJson(order)).toList();
      return Result.success(orders);
    } catch (error) {
      logger.e('Failed to get orders', error: error);
      return Result.error(error.toString());
    }
  }
}
