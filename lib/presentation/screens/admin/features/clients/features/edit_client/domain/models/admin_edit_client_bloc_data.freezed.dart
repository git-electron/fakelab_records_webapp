// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_edit_client_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminEditClientBlocData {
  User get client => throw _privateConstructorUsedError;
  AdminClientsBloc get adminClientsBloc => throw _privateConstructorUsedError;

  /// Create a copy of AdminEditClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminEditClientBlocDataCopyWith<AdminEditClientBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminEditClientBlocDataCopyWith<$Res> {
  factory $AdminEditClientBlocDataCopyWith(AdminEditClientBlocData value,
          $Res Function(AdminEditClientBlocData) then) =
      _$AdminEditClientBlocDataCopyWithImpl<$Res, AdminEditClientBlocData>;
  @useResult
  $Res call({User client, AdminClientsBloc adminClientsBloc});

  $UserCopyWith<$Res> get client;
}

/// @nodoc
class _$AdminEditClientBlocDataCopyWithImpl<$Res,
        $Val extends AdminEditClientBlocData>
    implements $AdminEditClientBlocDataCopyWith<$Res> {
  _$AdminEditClientBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminEditClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? adminClientsBloc = null,
  }) {
    return _then(_value.copyWith(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as User,
      adminClientsBloc: null == adminClientsBloc
          ? _value.adminClientsBloc
          : adminClientsBloc // ignore: cast_nullable_to_non_nullable
              as AdminClientsBloc,
    ) as $Val);
  }

  /// Create a copy of AdminEditClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get client {
    return $UserCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminEditClientBlocDataImplCopyWith<$Res>
    implements $AdminEditClientBlocDataCopyWith<$Res> {
  factory _$$AdminEditClientBlocDataImplCopyWith(
          _$AdminEditClientBlocDataImpl value,
          $Res Function(_$AdminEditClientBlocDataImpl) then) =
      __$$AdminEditClientBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User client, AdminClientsBloc adminClientsBloc});

  @override
  $UserCopyWith<$Res> get client;
}

/// @nodoc
class __$$AdminEditClientBlocDataImplCopyWithImpl<$Res>
    extends _$AdminEditClientBlocDataCopyWithImpl<$Res,
        _$AdminEditClientBlocDataImpl>
    implements _$$AdminEditClientBlocDataImplCopyWith<$Res> {
  __$$AdminEditClientBlocDataImplCopyWithImpl(
      _$AdminEditClientBlocDataImpl _value,
      $Res Function(_$AdminEditClientBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminEditClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? adminClientsBloc = null,
  }) {
    return _then(_$AdminEditClientBlocDataImpl(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as User,
      adminClientsBloc: null == adminClientsBloc
          ? _value.adminClientsBloc
          : adminClientsBloc // ignore: cast_nullable_to_non_nullable
              as AdminClientsBloc,
    ));
  }
}

/// @nodoc

class _$AdminEditClientBlocDataImpl implements _AdminEditClientBlocData {
  const _$AdminEditClientBlocDataImpl(
      {required this.client, required this.adminClientsBloc});

  @override
  final User client;
  @override
  final AdminClientsBloc adminClientsBloc;

  @override
  String toString() {
    return 'AdminEditClientBlocData(client: $client, adminClientsBloc: $adminClientsBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminEditClientBlocDataImpl &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.adminClientsBloc, adminClientsBloc) ||
                other.adminClientsBloc == adminClientsBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client, adminClientsBloc);

  /// Create a copy of AdminEditClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminEditClientBlocDataImplCopyWith<_$AdminEditClientBlocDataImpl>
      get copyWith => __$$AdminEditClientBlocDataImplCopyWithImpl<
          _$AdminEditClientBlocDataImpl>(this, _$identity);
}

abstract class _AdminEditClientBlocData implements AdminEditClientBlocData {
  const factory _AdminEditClientBlocData(
          {required final User client,
          required final AdminClientsBloc adminClientsBloc}) =
      _$AdminEditClientBlocDataImpl;

  @override
  User get client;
  @override
  AdminClientsBloc get adminClientsBloc;

  /// Create a copy of AdminEditClientBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminEditClientBlocDataImplCopyWith<_$AdminEditClientBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
