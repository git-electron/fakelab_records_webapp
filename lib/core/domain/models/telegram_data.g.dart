// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramDataImpl _$$TelegramDataImplFromJson(Map<String, dynamic> json) =>
    _$TelegramDataImpl(
      id: json['id'] as String,
      username: json['username'] as String? ?? '',
      photoUrl: json['photo_url'] as String? ?? '',
      name: json['first_name'] as String? ?? '',
      surname: json['last_name'] as String? ?? '',
    );

Map<String, dynamic> _$$TelegramDataImplToJson(_$TelegramDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'photo_url': instance.photoUrl,
      'first_name': instance.name,
      'last_name': instance.surname,
    };
