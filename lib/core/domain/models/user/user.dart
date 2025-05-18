import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/constants.dart';
import '../../../constants/types.dart';
import '../../../extensions/string_extensions.dart';

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

  factory User.fromJson(Json json) => _$UserFromJson(json);

  factory User.maybeFromJson(dynamic json) => _$UserFromJson(json);

  User._();

  bool get isAdmin => adminAccountIds.contains(id);

  String get fullName {
    return '$firstName${lastName.isNotNullAndEmpty ? ' $lastName' : ''}';
  }

  String get idShort => '#${id.toString().substring(id.toString().length - 5)}';
}
