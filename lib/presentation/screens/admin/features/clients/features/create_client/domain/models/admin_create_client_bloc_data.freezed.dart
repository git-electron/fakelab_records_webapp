// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_create_client_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminCreateClientBlocData {
  AdminClientsBloc get adminClientsBloc => throw _privateConstructorUsedError;

  /// Create a copy of AdminCreateClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCreateClientBlocDataCopyWith<AdminCreateClientBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreateClientBlocDataCopyWith<$Res> {
  factory $AdminCreateClientBlocDataCopyWith(AdminCreateClientBlocData value,
          $Res Function(AdminCreateClientBlocData) then) =
      _$AdminCreateClientBlocDataCopyWithImpl<$Res, AdminCreateClientBlocData>;
  @useResult
  $Res call({AdminClientsBloc adminClientsBloc});
}

/// @nodoc
class _$AdminCreateClientBlocDataCopyWithImpl<$Res,
        $Val extends AdminCreateClientBlocData>
    implements $AdminCreateClientBlocDataCopyWith<$Res> {
  _$AdminCreateClientBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCreateClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminClientsBloc = null,
  }) {
    return _then(_value.copyWith(
      adminClientsBloc: null == adminClientsBloc
          ? _value.adminClientsBloc
          : adminClientsBloc // ignore: cast_nullable_to_non_nullable
              as AdminClientsBloc,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminCreateClientBlocDataImplCopyWith<$Res>
    implements $AdminCreateClientBlocDataCopyWith<$Res> {
  factory _$$AdminCreateClientBlocDataImplCopyWith(
          _$AdminCreateClientBlocDataImpl value,
          $Res Function(_$AdminCreateClientBlocDataImpl) then) =
      __$$AdminCreateClientBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdminClientsBloc adminClientsBloc});
}

/// @nodoc
class __$$AdminCreateClientBlocDataImplCopyWithImpl<$Res>
    extends _$AdminCreateClientBlocDataCopyWithImpl<$Res,
        _$AdminCreateClientBlocDataImpl>
    implements _$$AdminCreateClientBlocDataImplCopyWith<$Res> {
  __$$AdminCreateClientBlocDataImplCopyWithImpl(
      _$AdminCreateClientBlocDataImpl _value,
      $Res Function(_$AdminCreateClientBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminClientsBloc = null,
  }) {
    return _then(_$AdminCreateClientBlocDataImpl(
      adminClientsBloc: null == adminClientsBloc
          ? _value.adminClientsBloc
          : adminClientsBloc // ignore: cast_nullable_to_non_nullable
              as AdminClientsBloc,
    ));
  }
}

/// @nodoc

class _$AdminCreateClientBlocDataImpl implements _AdminCreateClientBlocData {
  const _$AdminCreateClientBlocDataImpl({required this.adminClientsBloc});

  @override
  final AdminClientsBloc adminClientsBloc;

  @override
  String toString() {
    return 'AdminCreateClientBlocData(adminClientsBloc: $adminClientsBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCreateClientBlocDataImpl &&
            (identical(other.adminClientsBloc, adminClientsBloc) ||
                other.adminClientsBloc == adminClientsBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminClientsBloc);

  /// Create a copy of AdminCreateClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCreateClientBlocDataImplCopyWith<_$AdminCreateClientBlocDataImpl>
      get copyWith => __$$AdminCreateClientBlocDataImplCopyWithImpl<
          _$AdminCreateClientBlocDataImpl>(this, _$identity);
}

abstract class _AdminCreateClientBlocData implements AdminCreateClientBlocData {
  const factory _AdminCreateClientBlocData(
          {required final AdminClientsBloc adminClientsBloc}) =
      _$AdminCreateClientBlocDataImpl;

  @override
  AdminClientsBloc get adminClientsBloc;

  /// Create a copy of AdminCreateClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminCreateClientBlocDataImplCopyWith<_$AdminCreateClientBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
