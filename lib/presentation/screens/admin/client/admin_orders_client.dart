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
class AdminOrdersClient {
  AdminOrdersClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  Future<Result<List<Order>>> getOrders() async {
    final DateTime now = DateTime.now().toUtc();
    final DateTime twoMonthsAgo = DateTime(now.year, now.month - 2, now.day);

    if (isDevelopment) {
      return Result.success(Mock.orders
          .where((order) => order.dateChanged.isAfter(twoMonthsAgo))
          .toList());
    }

    try {
      const String path = 'orders';
      final DataSnapshot snapshot = await ref
          .child(path)
          .orderByChild('dateChanged')
          .startAt(twoMonthsAgo.toIso8601String())
          .get();

      final Json? json = snapshot.value.firebaseResponseToJson();

      logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return Result.success([]);

      final List<Order> orders = json.values
          .map((order) => Order.fromJson(order))
          .toList()
        ..sort((a, b) => b.dateCreated.compareTo(a.dateCreated));

      return Result.success(orders);
    } catch (error) {
      logger.e('Failed to get orders', error: error);
      return Result.error(error.toString());
    }
  }
}
