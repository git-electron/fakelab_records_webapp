// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramDataImpl _$$TelegramDataImplFromJson(Map<String, dynamic> json) =>
    _$TelegramDataImpl(
      user: TelegramUser.fromJson(json['user'] as Map<String, dynamic>),
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$$TelegramDataImplToJson(_$TelegramDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'platform': instance.platform,
    };
