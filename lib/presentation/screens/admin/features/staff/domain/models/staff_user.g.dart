// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffUserImpl _$$StaffUserImplFromJson(Map<String, dynamic> json) =>
    _$StaffUserImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      username: json['username'] as String?,
      services: (json['services'] as List<dynamic>)
          .map((e) => $enumDecode(_$OrderServiceTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$StaffUserImplToJson(_$StaffUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'username': instance.username,
      'services':
          instance.services.map((e) => _$OrderServiceTypeEnumMap[e]!).toList(),
    };

const _$OrderServiceTypeEnumMap = {
  OrderServiceType.MIX: 'MIX',
  OrderServiceType.BEAT: 'BEAT',
  OrderServiceType.MASTERING: 'MASTERING',
};
