import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'telegram_user.freezed.dart';
part 'telegram_user.g.dart';

@freezed
class TelegramUser with _$TelegramUser {
  factory TelegramUser({
    required int id,
    String? photoUrl,
    String? username,
    @JsonKey(name: 'first_name') String? name,
    @JsonKey(name: 'last_name') String? surname,
  }) = _TelegramUser;

  factory TelegramUser.fromJson(Map<String, dynamic> json) =>
      _$TelegramUserFromJson(json['user']);

  TelegramUser._();

  String get firstName {
    if (name.isNotNullAndEmpty) return name!;
    if (username.isNotNullAndEmpty) return username!;
    return 'Юзер';
  }

  String get fullName {
    if (name.isNotNullAndEmpty && surname.isNotNullAndEmpty) {
      return '$name $surname';
    }
    return firstName;
  }

  String get avatarLetter {
    if (name.isNotNullAndEmpty) return name![0];
    if (username.isNotNullAndEmpty) return username![0];
    return '🥶';
  }

  static const Json debugMock = {
    'user': {
      'id': 265685890,
      'first_name': 'Egorick',
      'last_name': null,
      'username': 'raimeeee',
      'photo_url':
          'https://t.me/i/userpic/320/QzaYKj8gtRiq3RqEWaoFAjlqDoTTcLn5DvXKCosQsfE.svg',
    }
  };
}
