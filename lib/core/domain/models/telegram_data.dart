import 'package:fakelab_records_webapp/core/constants/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'telegram_data.freezed.dart';
part 'telegram_data.g.dart';

@freezed
class TelegramData with _$TelegramData {
  factory TelegramData({
    required String id,
    @Default('') String? username,
    @Default('') String? photoUrl,
    @JsonKey(name: 'first_name') @Default('') String? name,
    @JsonKey(name: 'last_name') @Default('') String? surname,
  }) = _TelegramData;

  factory TelegramData.fromJson(Map<String, dynamic> json) =>
      _$TelegramDataFromJson(json['user']);

  static const Json debugData = {
    'user': {
      'id': '265685890',
      'first_name': 'Egorick',
      'last_name': null,
      'username': 'raimeeee',
      'photo_url':
          'https://t.me/i/userpic/320/QzaYKj8gtRiq3RqEWaoFAjlqDoTTcLn5DvXKCosQsfE.svg',
    }
  };
}
