// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderService _$OrderServiceFromJson(Map<String, dynamic> json) {
  return _OrderService.fromJson(json);
}

/// @nodoc
mixin _$OrderService {
  OrderServiceType get type => throw _privateConstructorUsedError;
  double get totalCost => throw _privateConstructorUsedError;
  bool get costFrom => throw _privateConstructorUsedError;

  /// Serializes this OrderService to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderServiceCopyWith<OrderService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderServiceCopyWith<$Res> {
  factory $OrderServiceCopyWith(
          OrderService value, $Res Function(OrderService) then) =
      _$OrderServiceCopyWithImpl<$Res, OrderService>;
  @useResult
  $Res call({OrderServiceType type, double totalCost, bool costFrom});
}

/// @nodoc
class _$OrderServiceCopyWithImpl<$Res, $Val extends OrderService>
    implements $OrderServiceCopyWith<$Res> {
  _$OrderServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? totalCost = null,
    Object? costFrom = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderServiceType,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      costFrom: null == costFrom
          ? _value.costFrom
          : costFrom // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderServiceImplCopyWith<$Res>
    implements $OrderServiceCopyWith<$Res> {
  factory _$$OrderServiceImplCopyWith(
          _$OrderServiceImpl value, $Res Function(_$OrderServiceImpl) then) =
      __$$OrderServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderServiceType type, double totalCost, bool costFrom});
}

/// @nodoc
class __$$OrderServiceImplCopyWithImpl<$Res>
    extends _$OrderServiceCopyWithImpl<$Res, _$OrderServiceImpl>
    implements _$$OrderServiceImplCopyWith<$Res> {
  __$$OrderServiceImplCopyWithImpl(
      _$OrderServiceImpl _value, $Res Function(_$OrderServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? totalCost = null,
    Object? costFrom = null,
  }) {
    return _then(_$OrderServiceImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderServiceType,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      costFrom: null == costFrom
          ? _value.costFrom
          : costFrom // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderServiceImpl implements _OrderService {
  _$OrderServiceImpl(
      {required this.type, required this.totalCost, required this.costFrom});

  factory _$OrderServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderServiceImplFromJson(json);

  @override
  final OrderServiceType type;
  @override
  final double totalCost;
  @override
  final bool costFrom;

  @override
  String toString() {
    return 'OrderService(type: $type, totalCost: $totalCost, costFrom: $costFrom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderServiceImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.costFrom, costFrom) ||
                other.costFrom == costFrom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, totalCost, costFrom);

  /// Create a copy of OrderService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderServiceImplCopyWith<_$OrderServiceImpl> get copyWith =>
      __$$OrderServiceImplCopyWithImpl<_$OrderServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderServiceImplToJson(
      this,
    );
  }
}

abstract class _OrderService implements OrderService {
  factory _OrderService(
      {required final OrderServiceType type,
      required final double totalCost,
      required final bool costFrom}) = _$OrderServiceImpl;

  factory _OrderService.fromJson(Map<String, dynamic> json) =
      _$OrderServiceImpl.fromJson;

  @override
  OrderServiceType get type;
  @override
  double get totalCost;
  @override
  bool get costFrom;

  /// Create a copy of OrderService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderServiceImplCopyWith<_$OrderServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
