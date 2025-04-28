import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/extensions/object_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

@injectable
class AdminPanelClient {
  AdminPanelClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  Future<Result<List<Order>>> getOrders() async {
    try {
      final DateTime nowUtc = DateTime.now().toUtc();

      const String path = 'orders';
      final DataSnapshot snapshot = await ref
          .child(path)
          .orderByChild('dateCreated')
          .startAt(DateTime(nowUtc.year, nowUtc.month, 1).toIso8601String())
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
