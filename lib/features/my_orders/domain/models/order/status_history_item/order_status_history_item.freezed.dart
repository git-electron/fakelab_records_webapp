// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_history_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderStatusHistoryItem _$OrderStatusHistoryItemFromJson(
    Map<String, dynamic> json) {
  return _OrderStatusHistoryItem.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusHistoryItem {
  OrderStatus get status => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get dateChanged => throw _privateConstructorUsedError;

  /// Serializes this OrderStatusHistoryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderStatusHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStatusHistoryItemCopyWith<OrderStatusHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusHistoryItemCopyWith<$Res> {
  factory $OrderStatusHistoryItemCopyWith(OrderStatusHistoryItem value,
          $Res Function(OrderStatusHistoryItem) then) =
      _$OrderStatusHistoryItemCopyWithImpl<$Res, OrderStatusHistoryItem>;
  @useResult
  $Res call({OrderStatus status, @DateTimeConverter() DateTime dateChanged});
}

/// @nodoc
class _$OrderStatusHistoryItemCopyWithImpl<$Res,
        $Val extends OrderStatusHistoryItem>
    implements $OrderStatusHistoryItemCopyWith<$Res> {
  _$OrderStatusHistoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderStatusHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dateChanged = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      dateChanged: null == dateChanged
          ? _value.dateChanged
          : dateChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderStatusHistoryItemImplCopyWith<$Res>
    implements $OrderStatusHistoryItemCopyWith<$Res> {
  factory _$$OrderStatusHistoryItemImplCopyWith(
          _$OrderStatusHistoryItemImpl value,
          $Res Function(_$OrderStatusHistoryItemImpl) then) =
      __$$OrderStatusHistoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderStatus status, @DateTimeConverter() DateTime dateChanged});
}

/// @nodoc
class __$$OrderStatusHistoryItemImplCopyWithImpl<$Res>
    extends _$OrderStatusHistoryItemCopyWithImpl<$Res,
        _$OrderStatusHistoryItemImpl>
    implements _$$OrderStatusHistoryItemImplCopyWith<$Res> {
  __$$OrderStatusHistoryItemImplCopyWithImpl(
      _$OrderStatusHistoryItemImpl _value,
      $Res Function(_$OrderStatusHistoryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderStatusHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dateChanged = null,
  }) {
    return _then(_$OrderStatusHistoryItemImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      dateChanged: null == dateChanged
          ? _value.dateChanged
          : dateChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatusHistoryItemImpl implements _OrderStatusHistoryItem {
  _$OrderStatusHistoryItemImpl(
      {required this.status, @DateTimeConverter() required this.dateChanged});

  factory _$OrderStatusHistoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusHistoryItemImplFromJson(json);

  @override
  final OrderStatus status;
  @override
  @DateTimeConverter()
  final DateTime dateChanged;

  @override
  String toString() {
    return 'OrderStatusHistoryItem(status: $status, dateChanged: $dateChanged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusHistoryItemImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateChanged, dateChanged) ||
                other.dateChanged == dateChanged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, dateChanged);

  /// Create a copy of OrderStatusHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusHistoryItemImplCopyWith<_$OrderStatusHistoryItemImpl>
      get copyWith => __$$OrderStatusHistoryItemImplCopyWithImpl<
          _$OrderStatusHistoryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusHistoryItemImplToJson(
      this,
    );
  }
}

abstract class _OrderStatusHistoryItem implements OrderStatusHistoryItem {
  factory _OrderStatusHistoryItem(
          {required final OrderStatus status,
          @DateTimeConverter() required final DateTime dateChanged}) =
      _$OrderStatusHistoryItemImpl;

  factory _OrderStatusHistoryItem.fromJson(Map<String, dynamic> json) =
      _$OrderStatusHistoryItemImpl.fromJson;

  @override
  OrderStatus get status;
  @override
  @DateTimeConverter()
  DateTime get dateChanged;

  /// Create a copy of OrderStatusHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStatusHistoryItemImplCopyWith<_$OrderStatusHistoryItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
