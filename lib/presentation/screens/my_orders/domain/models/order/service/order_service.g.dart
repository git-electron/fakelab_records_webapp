// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderServiceImpl _$$OrderServiceImplFromJson(Map<String, dynamic> json) =>
    _$OrderServiceImpl(
      type: $enumDecode(_$OrderServiceTypeEnumMap, json['type']),
      totalCost: (json['total_cost'] as num).toDouble(),
      costFrom: json['cost_from'] as bool,
    );

Map<String, dynamic> _$$OrderServiceImplToJson(_$OrderServiceImpl instance) =>
    <String, dynamic>{
      'type': _$OrderServiceTypeEnumMap[instance.type]!,
      'total_cost': instance.totalCost,
      'cost_from': instance.costFrom,
    };

const _$OrderServiceTypeEnumMap = {
  OrderServiceType.MIX: 'MIX',
  OrderServiceType.MASTERING: 'MASTERING',
  OrderServiceType.BEAT: 'BEAT',
};
