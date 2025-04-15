import 'package:freezed_annotation/freezed_annotation.dart';

import 'telegram_meta.dart';
import 'telegram_user.dart';

part 'telegram_data.freezed.dart';
part 'telegram_data.g.dart';

@freezed
class TelegramData with _$TelegramData {
  factory TelegramData({
    required TelegramUser user,
    required TelegramMeta meta,
  }) = _TelegramData;

  factory TelegramData.fromJson(Map<String, dynamic> json) =>
      _$TelegramDataFromJson(json);

  TelegramData._();
}
