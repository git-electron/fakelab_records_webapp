import '../../constants/mock.dart';
import '../../constants/types.dart';
import '../../domain/models/result/result.dart';
import '../../domain/models/user/user.dart';
import '../../extensions/object_extensions.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@injectable
class UserClient {
  UserClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  Future<Result<User>> getUser(int userId) async {
    if (kDebugMode) return Result.success(Mock.user);

    try {
      final String path = 'users/$userId';
      final DatabaseEvent event = await ref.child(path).once();
      final DataSnapshot snapshot = event.snapshot;
      final bool isExists = snapshot.exists;

      if (!isExists) return Result.error('Пользователь не найден');

      final Json? json = snapshot.value.firebaseResponseToJson();

      logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return Result.error('Пользователь не найден');

      final User user = User.fromJson(json);
      return Result.success(user);
    } catch (error) {
      logger.e('Failed to get user', error: error);
      return Result.error(error.toString());
    }
  }
}
