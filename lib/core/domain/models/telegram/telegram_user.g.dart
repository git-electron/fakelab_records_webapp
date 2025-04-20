// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramUserImpl _$$TelegramUserImplFromJson(Map<String, dynamic> json) =>
    _$TelegramUserImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String?,
      name: json['first_name'] as String?,
      surname: json['last_name'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$$TelegramUserImplToJson(_$TelegramUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'first_name': instance.name,
      'last_name': instance.surname,
      'photo_url': instance.photoUrl,
    };
