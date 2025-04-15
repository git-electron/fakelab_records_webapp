import 'package:fakelab_records_webapp/core/domain/models/telegram/telegram_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'telegram_data.freezed.dart';
part 'telegram_data.g.dart';

@freezed
class TelegramData with _$TelegramData {
  factory TelegramData({
    required TelegramUser user,
    required String platform,
  }) = _TelegramData;

  factory TelegramData.fromJson(Map<String, dynamic> json) =>
      _$TelegramDataFromJson(json);

  TelegramData._();
}
