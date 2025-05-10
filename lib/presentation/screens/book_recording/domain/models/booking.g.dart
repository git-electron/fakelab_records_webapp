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
      date: const DateTimeConverter().fromJson(json['date'] as String),
      totalCost: (json['totalCost'] as num).toDouble(),
      duration: Duration(microseconds: (json['duration'] as num).toInt()),
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
      'date': const DateTimeConverter().toJson(instance.date),
      'totalCost': instance.totalCost,
      'duration': instance.duration.inMicroseconds,
      'assignee': instance.assignee?.toJson(),
      'rating': instance.rating?.toJson(),
    };

const _$BookingStatusEnumMap = {
  BookingStatus.REQUEST: 'REQUEST',
  BookingStatus.PENDING: 'PENDING',
  BookingStatus.COMPLETED: 'COMPLETED',
  BookingStatus.CANCELLED: 'CANCELLED',
};
