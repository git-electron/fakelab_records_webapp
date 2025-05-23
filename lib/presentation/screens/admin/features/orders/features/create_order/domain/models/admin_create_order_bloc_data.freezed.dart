// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_create_order_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminCreateOrderBlocData {
  AdminOrdersBloc get adminOrdersBloc => throw _privateConstructorUsedError;

  /// Create a copy of AdminCreateOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCreateOrderBlocDataCopyWith<AdminCreateOrderBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreateOrderBlocDataCopyWith<$Res> {
  factory $AdminCreateOrderBlocDataCopyWith(AdminCreateOrderBlocData value,
          $Res Function(AdminCreateOrderBlocData) then) =
      _$AdminCreateOrderBlocDataCopyWithImpl<$Res, AdminCreateOrderBlocData>;
  @useResult
  $Res call({AdminOrdersBloc adminOrdersBloc});
}

/// @nodoc
class _$AdminCreateOrderBlocDataCopyWithImpl<$Res,
        $Val extends AdminCreateOrderBlocData>
    implements $AdminCreateOrderBlocDataCopyWith<$Res> {
  _$AdminCreateOrderBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCreateOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminOrdersBloc = null,
  }) {
    return _then(_value.copyWith(
      adminOrdersBloc: null == adminOrdersBloc
          ? _value.adminOrdersBloc
          : adminOrdersBloc // ignore: cast_nullable_to_non_nullable
              as AdminOrdersBloc,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminCreateOrderBlocDataImplCopyWith<$Res>
    implements $AdminCreateOrderBlocDataCopyWith<$Res> {
  factory _$$AdminCreateOrderBlocDataImplCopyWith(
          _$AdminCreateOrderBlocDataImpl value,
          $Res Function(_$AdminCreateOrderBlocDataImpl) then) =
      __$$AdminCreateOrderBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdminOrdersBloc adminOrdersBloc});
}

/// @nodoc
class __$$AdminCreateOrderBlocDataImplCopyWithImpl<$Res>
    extends _$AdminCreateOrderBlocDataCopyWithImpl<$Res,
        _$AdminCreateOrderBlocDataImpl>
    implements _$$AdminCreateOrderBlocDataImplCopyWith<$Res> {
  __$$AdminCreateOrderBlocDataImplCopyWithImpl(
      _$AdminCreateOrderBlocDataImpl _value,
      $Res Function(_$AdminCreateOrderBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminOrdersBloc = null,
  }) {
    return _then(_$AdminCreateOrderBlocDataImpl(
      adminOrdersBloc: null == adminOrdersBloc
          ? _value.adminOrdersBloc
          : adminOrdersBloc // ignore: cast_nullable_to_non_nullable
              as AdminOrdersBloc,
    ));
  }
}

/// @nodoc

class _$AdminCreateOrderBlocDataImpl implements _AdminCreateOrderBlocData {
  const _$AdminCreateOrderBlocDataImpl({required this.adminOrdersBloc});

  @override
  final AdminOrdersBloc adminOrdersBloc;

  @override
  String toString() {
    return 'AdminCreateOrderBlocData(adminOrdersBloc: $adminOrdersBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCreateOrderBlocDataImpl &&
            (identical(other.adminOrdersBloc, adminOrdersBloc) ||
                other.adminOrdersBloc == adminOrdersBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminOrdersBloc);

  /// Create a copy of AdminCreateOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCreateOrderBlocDataImplCopyWith<_$AdminCreateOrderBlocDataImpl>
      get copyWith => __$$AdminCreateOrderBlocDataImplCopyWithImpl<
          _$AdminCreateOrderBlocDataImpl>(this, _$identity);
}

abstract class _AdminCreateOrderBlocData implements AdminCreateOrderBlocData {
  const factory _AdminCreateOrderBlocData(
          {required final AdminOrdersBloc adminOrdersBloc}) =
      _$AdminCreateOrderBlocDataImpl;

  @override
  AdminOrdersBloc get adminOrdersBloc;

  /// Create a copy of AdminCreateOrderBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminCreateOrderBlocDataImplCopyWith<_$AdminCreateOrderBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
