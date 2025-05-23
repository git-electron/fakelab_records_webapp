import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../core/domain/models/user/user.dart';

@injectable
class AdminCreateClientClient {
  AdminCreateClientClient(this._ref, this._logger);

  final Logger _logger;
  final DatabaseReference _ref;

  static const String _errorMessage = 'Failed to create client';

  Future<Result<User>> createClient(User client) async {
    try {
      final String path = 'users/${client.id}';

      _logger.i('''Realtime Database create request:
Path: $path
Data: $client''');

      await _ref.child(path).set(client.toJson());

      return Result.success(client);
    } catch (error) {
      _logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
