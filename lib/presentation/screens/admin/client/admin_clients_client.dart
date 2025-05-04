import 'package:fakelab_records_webapp/core/constants/mock.dart';
import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/core/extensions/object_extensions.dart';
import 'package:fakelab_records_webapp/main.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

@injectable
class AdminClientsClient {
  AdminClientsClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  Future<Result<List<User>>> getClients() async {
    if (isDevelopment) return Result.success(Mock.clients);

    try {
      const String path = 'users';
      final DataSnapshot snapshot = await ref.child(path).get();

      final Json? json = snapshot.value.firebaseResponseToJson();

      logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return Result.success([]);

      final List<User> clients =
          json.values.map((client) => User.fromJson(client)).toList();

      return Result.success(clients);
    } catch (error) {
      logger.e('Failed to get clients', error: error);
      return Result.error(error.toString());
    }
  }

  Future<Result<bool>> deleteClient(int clientId) async {
    try {
      final String path = 'users/$clientId';

      logger.i('''Realtime Database delete request:
Path: $path''');

      await ref.child(path).remove();

      return Result.success(true);
    } catch (error) {
      logger.e('Failed to delete client', error: error);
      return Result.error();
    }
  }
}
