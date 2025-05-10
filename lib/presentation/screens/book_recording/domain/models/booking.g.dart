// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      id: json['id'] as String,
      customer: User.fromJson(json['customer'] as Map<String, dynamic>),
      status: $enumDecode(_$BookingStatusEnumMap, json['status']),
      statusHistory: (json['statusHistory'] as List<dynamic>)
          .map((e) =>
              BookingStatusHistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateCreated:
          const DateTimeConverter().fromJson(json['dateCreated'] as String),
      dateChanged:
          const DateTimeConverter().fromJson(json['dateChanged'] as String),
      totalCost: (json['totalCost'] as num).toDouble(),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      assignee: json['assignee'] == null
          ? null
          : StaffMember.fromJson(json['assignee'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer.toJson(),
      'status': _$BookingStatusEnumMap[instance.status]!,
      'statusHistory': instance.statusHistory.map((e) => e.toJson()).toList(),
      'dateCreated': const DateTimeConverter().toJson(instance.dateCreated),
      'dateChanged': const DateTimeConverter().toJson(instance.dateChanged),
      'totalCost': instance.totalCost,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'assignee': instance.assignee?.toJson(),
      'rating': instance.rating?.toJson(),
    };

const _$BookingStatusEnumMap = {
  BookingStatus.REQUEST: 'REQUEST',
  BookingStatus.PENDING: 'PENDING',
  BookingStatus.COMPLETED: 'COMPLETED',
  BookingStatus.CANCELLED: 'CANCELLED',
};
