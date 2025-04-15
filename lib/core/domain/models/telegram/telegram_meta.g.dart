// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramMetaImpl _$$TelegramMetaImplFromJson(Map<String, dynamic> json) =>
    _$TelegramMetaImpl(
      platform: json['platform'] as String,
      safeAreaInset: SafeAreaInset.fromJson(
          json['safe_area_inset'] as Map<String, dynamic>),
      contentSafeAreaInset: SafeAreaInset.fromJson(
          json['content_safe_area_inset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TelegramMetaImplToJson(_$TelegramMetaImpl instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'safe_area_inset': instance.safeAreaInset.toJson(),
      'content_safe_area_inset': instance.contentSafeAreaInset.toJson(),
    };
