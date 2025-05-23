// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_create_staff_member_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminCreateStaffMemberBlocData {
  AdminStaffBloc get adminStaffBloc => throw _privateConstructorUsedError;

  /// Create a copy of AdminCreateStaffMemberBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCreateStaffMemberBlocDataCopyWith<AdminCreateStaffMemberBlocData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreateStaffMemberBlocDataCopyWith<$Res> {
  factory $AdminCreateStaffMemberBlocDataCopyWith(
          AdminCreateStaffMemberBlocData value,
          $Res Function(AdminCreateStaffMemberBlocData) then) =
      _$AdminCreateStaffMemberBlocDataCopyWithImpl<$Res,
          AdminCreateStaffMemberBlocData>;
  @useResult
  $Res call({AdminStaffBloc adminStaffBloc});
}

/// @nodoc
class _$AdminCreateStaffMemberBlocDataCopyWithImpl<$Res,
        $Val extends AdminCreateStaffMemberBlocData>
    implements $AdminCreateStaffMemberBlocDataCopyWith<$Res> {
  _$AdminCreateStaffMemberBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCreateStaffMemberBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminStaffBloc = null,
  }) {
    return _then(_value.copyWith(
      adminStaffBloc: null == adminStaffBloc
          ? _value.adminStaffBloc
          : adminStaffBloc // ignore: cast_nullable_to_non_nullable
              as AdminStaffBloc,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminCreateStaffMemberBlocDataImplCopyWith<$Res>
    implements $AdminCreateStaffMemberBlocDataCopyWith<$Res> {
  factory _$$AdminCreateStaffMemberBlocDataImplCopyWith(
          _$AdminCreateStaffMemberBlocDataImpl value,
          $Res Function(_$AdminCreateStaffMemberBlocDataImpl) then) =
      __$$AdminCreateStaffMemberBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdminStaffBloc adminStaffBloc});
}

/// @nodoc
class __$$AdminCreateStaffMemberBlocDataImplCopyWithImpl<$Res>
    extends _$AdminCreateStaffMemberBlocDataCopyWithImpl<$Res,
        _$AdminCreateStaffMemberBlocDataImpl>
    implements _$$AdminCreateStaffMemberBlocDataImplCopyWith<$Res> {
  __$$AdminCreateStaffMemberBlocDataImplCopyWithImpl(
      _$AdminCreateStaffMemberBlocDataImpl _value,
      $Res Function(_$AdminCreateStaffMemberBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateStaffMemberBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminStaffBloc = null,
  }) {
    return _then(_$AdminCreateStaffMemberBlocDataImpl(
      adminStaffBloc: null == adminStaffBloc
          ? _value.adminStaffBloc
          : adminStaffBloc // ignore: cast_nullable_to_non_nullable
              as AdminStaffBloc,
    ));
  }
}

/// @nodoc

class _$AdminCreateStaffMemberBlocDataImpl
    implements _AdminCreateStaffMemberBlocData {
  const _$AdminCreateStaffMemberBlocDataImpl({required this.adminStaffBloc});

  @override
  final AdminStaffBloc adminStaffBloc;

  @override
  String toString() {
    return 'AdminCreateStaffMemberBlocData(adminStaffBloc: $adminStaffBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCreateStaffMemberBlocDataImpl &&
            (identical(other.adminStaffBloc, adminStaffBloc) ||
                other.adminStaffBloc == adminStaffBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminStaffBloc);

  /// Create a copy of AdminCreateStaffMemberBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCreateStaffMemberBlocDataImplCopyWith<
          _$AdminCreateStaffMemberBlocDataImpl>
      get copyWith => __$$AdminCreateStaffMemberBlocDataImplCopyWithImpl<
          _$AdminCreateStaffMemberBlocDataImpl>(this, _$identity);
}

abstract class _AdminCreateStaffMemberBlocData
    implements AdminCreateStaffMemberBlocData {
  const factory _AdminCreateStaffMemberBlocData(
          {required final AdminStaffBloc adminStaffBloc}) =
      _$AdminCreateStaffMemberBlocDataImpl;

  @override
  AdminStaffBloc get adminStaffBloc;

  /// Create a copy of AdminCreateStaffMemberBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminCreateStaffMemberBlocDataImplCopyWith<
          _$AdminCreateStaffMemberBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
