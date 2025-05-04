import 'package:fakelab_records_webapp/core/constants/mock.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/main.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

@injectable
class AdminEditClientClient {
  AdminEditClientClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

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

      logger.i('''Realtime Database update request:
Path: $path
Data: $client''');

      await ref.child(path).update(client.toJson());

      return Result.success(client);
    } catch (error) {
      logger.e('Failed to update client', error: error);
      return Result.error(error.toString());
    }
  }
}
