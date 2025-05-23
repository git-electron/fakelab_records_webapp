import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../core/constants/mock.dart';
import '../../../../core/constants/types.dart';
import '../../../../core/domain/models/result/result.dart';
import '../../../../core/domain/models/user/user.dart';
import '../../../../core/extensions/object_extensions.dart';
import '../../../../main.dart';

@injectable
class AdminClientsClient {
  AdminClientsClient(this._ref, this._logger);

  final Logger _logger;
  final DatabaseReference _ref;

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

  static const String _deletelientErrorMessage = 'Failed to delete client';

  Future<Result<bool>> deleteClient(int clientId) async {
    try {
      final String path = 'users/$clientId';

      _logger.i('''Realtime Database delete request:
Path: $path''');

      await _ref.child(path).remove();

      return Result.success(true);
    } catch (error) {
      _logger.e(_deletelientErrorMessage, error: error);
      return Result.error();
    }
  }
}
