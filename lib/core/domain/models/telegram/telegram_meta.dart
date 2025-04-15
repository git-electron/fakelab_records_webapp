import 'package:freezed_annotation/freezed_annotation.dart';

import 'safe_area_inset.dart';

part 'telegram_meta.freezed.dart';
part 'telegram_meta.g.dart';

@freezed
class TelegramMeta with _$TelegramMeta {
  factory TelegramMeta({
    required String platform,
    required SafeAreaInset safeAreaInset,
    required SafeAreaInset contentSafeAreaInset,
  }) = _TelegramMeta;

  factory TelegramMeta.fromJson(Map<String, dynamic> json) =>
      _$TelegramMetaFromJson(json);

  TelegramMeta._();

  bool get isMobile => platform == 'ios' || platform == 'android';
}
