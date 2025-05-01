// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_history_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusHistoryItemImpl _$$OrderStatusHistoryItemImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStatusHistoryItemImpl(
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      dateChanged:
          const DateTimeConverter().fromJson(json['dateChanged'] as String),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$OrderStatusHistoryItemImplToJson(
        _$OrderStatusHistoryItemImpl instance) =>
    <String, dynamic>{
      'status': _$OrderStatusEnumMap[instance.status]!,
      'dateChanged': const DateTimeConverter().toJson(instance.dateChanged),
      'message': instance.message,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.REQUEST: 'REQUEST',
  OrderStatus.PENDING: 'PENDING',
  OrderStatus.IN_PROGRESS: 'IN_PROGRESS',
  OrderStatus.AWAITING_CONFIRMATION: 'AWAITING_CONFIRMATION',
  OrderStatus.COMPLETED: 'COMPLETED',
  OrderStatus.CANCELLED: 'CANCELLED',
};
