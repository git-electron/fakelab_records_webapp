// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String,
      customer: User.fromJson(json['customer'] as Map<String, dynamic>),
      type: $enumDecode(_$OrderTypeEnumMap, json['type']),
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      statusHistory: (json['statusHistory'] as List<dynamic>)
          .map(
              (e) => OrderStatusHistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateCreated:
          const DateTimeConverter().fromJson(json['dateCreated'] as String),
      totalCost: (json['totalCost'] as num).toDouble(),
      costFrom: json['costFrom'] as bool,
      services: (json['services'] as List<dynamic>)
          .map((e) => OrderService.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer.toJson(),
      'type': _$OrderTypeEnumMap[instance.type]!,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'statusHistory': instance.statusHistory.map((e) => e.toJson()).toList(),
      'dateCreated': const DateTimeConverter().toJson(instance.dateCreated),
      'totalCost': instance.totalCost,
      'costFrom': instance.costFrom,
      'services': instance.services.map((e) => e.toJson()).toList(),
      'rating': instance.rating?.toJson(),
    };

const _$OrderTypeEnumMap = {
  OrderType.MIX: 'MIX',
  OrderType.MASTERING: 'MASTERING',
  OrderType.BEAT: 'BEAT',
  OrderType.MIX_AND_MASTERING: 'MIX_AND_MASTERING',
};

const _$OrderStatusEnumMap = {
  OrderStatus.REQUEST: 'REQUEST',
  OrderStatus.PENDING: 'PENDING',
  OrderStatus.IN_PROGRESS: 'IN_PROGRESS',
  OrderStatus.AWAITING_CONFIRMATION: 'AWAITING_CONFIRMATION',
  OrderStatus.COMPLETED: 'COMPLETED',
  OrderStatus.CANCELLED: 'CANCELLED',
};
