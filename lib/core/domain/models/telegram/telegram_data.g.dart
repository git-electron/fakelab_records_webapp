// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramDataImpl _$$TelegramDataImplFromJson(Map<String, dynamic> json) =>
    _$TelegramDataImpl(
      user: TelegramUser.fromJson(json['user'] as Map<String, dynamic>),
      meta: TelegramMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TelegramDataImplToJson(_$TelegramDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'meta': instance.meta.toJson(),
    };
