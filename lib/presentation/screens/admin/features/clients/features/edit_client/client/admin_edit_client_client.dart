import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../../../../core/constants/mock.dart';
import '../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../core/domain/models/user/user.dart';
import '../../../../../../../../main.dart';

@injectable
class AdminEditClientClient {
  AdminEditClientClient(this._ref, this._logger);

  final Logger _logger;
  final DatabaseReference _ref;

  Future<Result<User>> updateClient(User client) async {
    if (isDevelopment) {
      final User? mockClient = Mock.getClient(client.id);
      if (mockClient != null) {
        return Result.success(client);
      } else {
        return Result.error('Не удалось изменить клиента');
      }
    }

    try {
      final String path = 'users/${client.id}';

      _logger.i('''Realtime Database update request:
Path: $path
Data: $client''');

      await _ref.child(path).update(client.toJson());

      return Result.success(client);
    } catch (error) {
      _logger.e('Failed to update client', error: error);
      return Result.error(error.toString());
    }
  }
}
