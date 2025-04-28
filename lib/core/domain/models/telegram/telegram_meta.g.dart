// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramMetaImpl _$$TelegramMetaImplFromJson(Map<String, dynamic> json) =>
    _$TelegramMetaImpl(
      platform: json['platform'] as String,
      safeAreaInset:
          SafeAreaInset.fromJson(json['safeAreaInset'] as Map<String, dynamic>),
      contentSafeAreaInset: SafeAreaInset.fromJson(
          json['contentSafeAreaInset'] as Map<String, dynamic>),
      isFullscreen: json['isFullscreen'] as bool,
    );

Map<String, dynamic> _$$TelegramMetaImplToJson(_$TelegramMetaImpl instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'safeAreaInset': instance.safeAreaInset.toJson(),
      'contentSafeAreaInset': instance.contentSafeAreaInset.toJson(),
      'isFullscreen': instance.isFullscreen,
    };
