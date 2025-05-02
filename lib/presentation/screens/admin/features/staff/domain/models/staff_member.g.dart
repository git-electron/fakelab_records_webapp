// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffMemberImpl _$$StaffMemberImplFromJson(Map<String, dynamic> json) =>
    _$StaffMemberImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      username: json['username'] as String?,
      activities: (json['activities'] as List<dynamic>)
          .map((e) => $enumDecode(_$StaffActivityEnumMap, e))
          .toList(),
      services: (json['services'] as List<dynamic>)
          .map((e) => $enumDecode(_$StaffServiceTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$StaffMemberImplToJson(_$StaffMemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'username': instance.username,
      'activities':
          instance.activities.map((e) => _$StaffActivityEnumMap[e]!).toList(),
      'services':
          instance.services.map((e) => _$StaffServiceTypeEnumMap[e]!).toList(),
    };

const _$StaffActivityEnumMap = {
  StaffActivity.ARTIST: 'ARTIST',
  StaffActivity.PRODUCER: 'PRODUCER',
  StaffActivity.MIX_ENGINEER: 'MIX_ENGINEER',
  StaffActivity.SOUND_ENGINEER: 'SOUND_ENGINEER',
  StaffActivity.MASTERING_ENGINEER: 'MASTERING_ENGINEER',
};

const _$StaffServiceTypeEnumMap = {
  StaffServiceType.MIX: 'MIX',
  StaffServiceType.RECORDING: 'RECORDING',
  StaffServiceType.BEAT: 'BEAT',
  StaffServiceType.MASTERING: 'MASTERING',
};
