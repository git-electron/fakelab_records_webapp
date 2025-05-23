// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_order_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminOrderBlocData {
  String get orderId => throw _privateConstructorUsedError;
  AdminOrdersBloc get adminOrdersBloc => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrderBlocDataCopyWith<AdminOrderBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrderBlocDataCopyWith<$Res> {
  factory $AdminOrderBlocDataCopyWith(
          AdminOrderBlocData value, $Res Function(AdminOrderBlocData) then) =
      _$AdminOrderBlocDataCopyWithImpl<$Res, AdminOrderBlocData>;
  @useResult
  $Res call({String orderId, AdminOrdersBloc adminOrdersBloc});
}

/// @nodoc
class _$AdminOrderBlocDataCopyWithImpl<$Res, $Val extends AdminOrderBlocData>
    implements $AdminOrderBlocDataCopyWith<$Res> {
  _$AdminOrderBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? adminOrdersBloc = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      adminOrdersBloc: null == adminOrdersBloc
          ? _value.adminOrdersBloc
          : adminOrdersBloc // ignore: cast_nullable_to_non_nullable
              as AdminOrdersBloc,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminOrderBlocDataImplCopyWith<$Res>
    implements $AdminOrderBlocDataCopyWith<$Res> {
  factory _$$AdminOrderBlocDataImplCopyWith(_$AdminOrderBlocDataImpl value,
          $Res Function(_$AdminOrderBlocDataImpl) then) =
      __$$AdminOrderBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, AdminOrdersBloc adminOrdersBloc});
}

/// @nodoc
class __$$AdminOrderBlocDataImplCopyWithImpl<$Res>
    extends _$AdminOrderBlocDataCopyWithImpl<$Res, _$AdminOrderBlocDataImpl>
    implements _$$AdminOrderBlocDataImplCopyWith<$Res> {
  __$$AdminOrderBlocDataImplCopyWithImpl(_$AdminOrderBlocDataImpl _value,
      $Res Function(_$AdminOrderBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? adminOrdersBloc = null,
  }) {
    return _then(_$AdminOrderBlocDataImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      adminOrdersBloc: null == adminOrdersBloc
          ? _value.adminOrdersBloc
          : adminOrdersBloc // ignore: cast_nullable_to_non_nullable
              as AdminOrdersBloc,
    ));
  }
}

/// @nodoc

class _$AdminOrderBlocDataImpl implements _AdminOrderBlocData {
  const _$AdminOrderBlocDataImpl(
      {required this.orderId, required this.adminOrdersBloc});

  @override
  final String orderId;
  @override
  final AdminOrdersBloc adminOrdersBloc;

  @override
  String toString() {
    return 'AdminOrderBlocData(orderId: $orderId, adminOrdersBloc: $adminOrdersBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrderBlocDataImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.adminOrdersBloc, adminOrdersBloc) ||
                other.adminOrdersBloc == adminOrdersBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, adminOrdersBloc);

  /// Create a copy of AdminOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrderBlocDataImplCopyWith<_$AdminOrderBlocDataImpl> get copyWith =>
      __$$AdminOrderBlocDataImplCopyWithImpl<_$AdminOrderBlocDataImpl>(
          this, _$identity);
}

abstract class _AdminOrderBlocData implements AdminOrderBlocData {
  const factory _AdminOrderBlocData(
          {required final String orderId,
          required final AdminOrdersBloc adminOrdersBloc}) =
      _$AdminOrderBlocDataImpl;

  @override
  String get orderId;
  @override
  AdminOrdersBloc get adminOrdersBloc;

  /// Create a copy of AdminOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrderBlocDataImplCopyWith<_$AdminOrderBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
