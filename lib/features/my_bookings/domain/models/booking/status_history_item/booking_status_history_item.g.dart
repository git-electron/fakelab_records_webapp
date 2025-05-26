// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_status_history_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingStatusHistoryItemImpl _$$BookingStatusHistoryItemImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingStatusHistoryItemImpl(
      status: $enumDecode(_$BookingStatusEnumMap, json['status']),
      dateChanged:
          const DateTimeConverter().fromJson(json['dateChanged'] as String),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$BookingStatusHistoryItemImplToJson(
        _$BookingStatusHistoryItemImpl instance) =>
    <String, dynamic>{
      'status': _$BookingStatusEnumMap[instance.status]!,
      'dateChanged': const DateTimeConverter().toJson(instance.dateChanged),
      'message': instance.message,
    };

const _$BookingStatusEnumMap = {
  BookingStatus.REQUEST: 'REQUEST',
  BookingStatus.PENDING: 'PENDING',
  BookingStatus.COMPLETED: 'COMPLETED',
  BookingStatus.CANCELLED: 'CANCELLED',
};
