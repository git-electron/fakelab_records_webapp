import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../main.dart';
import '../../constants/mock.dart';
import '../../constants/types.dart';
import '../../domain/models/result/result.dart';
import '../../domain/models/user/user.dart';
import '../../extensions/object_extensions.dart';

@injectable
class UserClient {
  UserClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  final Result<User> _notFoundResult = Result.error('Пользователь не найден');
  static const String _errorMessage = 'Failed to get user';

  Future<Result<User>> getUser(int userId) async {
    if (isDevelopment) return Result.success(Mock.user);

    try {
      final String path = 'users/$userId';

      final DatabaseEvent event = await ref.child(path).once();
      final DataSnapshot snapshot = event.snapshot;
      final bool isExists = snapshot.exists;

      if (!isExists) return _notFoundResult;

      final Json? json = snapshot.value.firebaseResponseToJson();

      logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return _notFoundResult;

      final User user = User.fromJson(json);
      return Result.success(user);
    } catch (error) {
      logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
