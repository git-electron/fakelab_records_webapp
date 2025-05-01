import 'package:fakelab_records_webapp/main.dart';

import '../../../../core/constants/mock.dart';
import '../../../../core/constants/types.dart';
import '../../../../core/domain/models/result/result.dart';
import '../../../../core/extensions/object_extensions.dart';
import '../../domain/models/order/order.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

@injectable
class OrdersClient {
  OrdersClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  Future<Result<List<Order>>> getOrders(
    int userId, {
    bool hasLimit = false,
  }) async {
    if (isDevelopment) {
      return Result.success(hasLimit ? Mock.orders.sublist(0, 5) : Mock.orders);
    }

    try {
      const String path = 'orders';
      final Query query =
          ref.child(path).orderByChild('customer/id').equalTo(userId);
      final DataSnapshot snapshot =
          hasLimit ? await query.limitToFirst(5).get() : await query.get();

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
