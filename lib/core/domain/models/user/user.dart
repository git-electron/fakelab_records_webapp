import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';

import '../../../constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed()
class User with _$User {
  factory User({
    required int id,
    required String firstName,
    required String? lastName,
    required String? username,
    required String phoneNumber,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  User._();

  bool get isAdmin => adminAccountIds.contains(id);

  String get fullName {
    return '$firstName${lastName.isNotNullAndEmpty ? ' $lastName' : ''}';
  }
}
