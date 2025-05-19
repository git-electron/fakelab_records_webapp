import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../core/domain/models/user/user.dart';

@injectable
class AdminCreateClientClient {
  AdminCreateClientClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  static const String _errorMessage = 'Failed to create client';

  Future<Result<User>> createClient(User client) async {
    try {
      final String path = 'users/${client.id}';

      logger.i('''Realtime Database create request:
Path: $path
Data: $client''');

      await ref.child(path).set(client.toJson());

      return Result.success(client);
    } catch (error) {
      logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
