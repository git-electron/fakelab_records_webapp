// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_order_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyOrderBlocData {
  String get orderId => throw _privateConstructorUsedError;

  /// Create a copy of MyOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrderBlocDataCopyWith<MyOrderBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrderBlocDataCopyWith<$Res> {
  factory $MyOrderBlocDataCopyWith(
          MyOrderBlocData value, $Res Function(MyOrderBlocData) then) =
      _$MyOrderBlocDataCopyWithImpl<$Res, MyOrderBlocData>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$MyOrderBlocDataCopyWithImpl<$Res, $Val extends MyOrderBlocData>
    implements $MyOrderBlocDataCopyWith<$Res> {
  _$MyOrderBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrderBlocDataImplCopyWith<$Res>
    implements $MyOrderBlocDataCopyWith<$Res> {
  factory _$$MyOrderBlocDataImplCopyWith(_$MyOrderBlocDataImpl value,
          $Res Function(_$MyOrderBlocDataImpl) then) =
      __$$MyOrderBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$MyOrderBlocDataImplCopyWithImpl<$Res>
    extends _$MyOrderBlocDataCopyWithImpl<$Res, _$MyOrderBlocDataImpl>
    implements _$$MyOrderBlocDataImplCopyWith<$Res> {
  __$$MyOrderBlocDataImplCopyWithImpl(
      _$MyOrderBlocDataImpl _value, $Res Function(_$MyOrderBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$MyOrderBlocDataImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MyOrderBlocDataImpl implements _MyOrderBlocData {
  const _$MyOrderBlocDataImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'MyOrderBlocData(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrderBlocDataImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of MyOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrderBlocDataImplCopyWith<_$MyOrderBlocDataImpl> get copyWith =>
      __$$MyOrderBlocDataImplCopyWithImpl<_$MyOrderBlocDataImpl>(
          this, _$identity);
}

abstract class _MyOrderBlocData implements MyOrderBlocData {
  const factory _MyOrderBlocData({required final String orderId}) =
      _$MyOrderBlocDataImpl;

  @override
  String get orderId;

  /// Create a copy of MyOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrderBlocDataImplCopyWith<_$MyOrderBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
