import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../core/constants/mock.dart';
import '../../../../../core/constants/types.dart';
import '../../../../../core/domain/models/result/result.dart';
import '../../../../../core/domain/models/user/user.dart';
import '../../../../../core/extensions/object_extensions.dart';
import '../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../main.dart';

@injectable
class AdminPanelClient {
  AdminPanelClient(this._ref, this._logger);

  final Logger _logger;
  final DatabaseReference _ref;

  static const String _ordersErrorMessage = 'Failed to get orders';

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

      final DataSnapshot snapshot = await _ref
          .child(path)
          .orderByChild('dateChanged')
          .startAt(twoMonthsAgo.toIso8601String())
          .get();

      final Json? json = snapshot.value.firebaseResponseToJson();

      _logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return Result.success([]);

      final List<Order> orders = json.values.map(Order.maybeFromJson).toList();
      return Result.success(orders);
    } catch (error) {
      _logger.e(_ordersErrorMessage, error: error);
      return Result.error(error.toString());
    }
  }

  static const String _clientsErrorMessage = 'Failed to get clients';

  Future<Result<List<User>>> getClients() async {
    if (isDevelopment) return Result.success(Mock.clients);

    try {
      const String path = 'users';
      final DataSnapshot snapshot = await _ref.child(path).get();

      final Json? json = snapshot.value.firebaseResponseToJson();

      _logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return Result.success([]);

      final List<User> clients = json.values.map(User.maybeFromJson).toList();

      return Result.success(clients);
    } catch (error) {
      _logger.e(_clientsErrorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
