// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StaffUser _$StaffUserFromJson(Map<String, dynamic> json) {
  return _StaffUser.fromJson(json);
}

/// @nodoc
mixin _$StaffUser {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  List<StaffActivity> get activities => throw _privateConstructorUsedError;
  List<OrderServiceType> get services => throw _privateConstructorUsedError;

  /// Serializes this StaffUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffUserCopyWith<StaffUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffUserCopyWith<$Res> {
  factory $StaffUserCopyWith(StaffUser value, $Res Function(StaffUser) then) =
      _$StaffUserCopyWithImpl<$Res, StaffUser>;
  @useResult
  $Res call(
      {int id,
      String firstName,
      String? lastName,
      String? username,
      List<StaffActivity> activities,
      List<OrderServiceType> services});
}

/// @nodoc
class _$StaffUserCopyWithImpl<$Res, $Val extends StaffUser>
    implements $StaffUserCopyWith<$Res> {
  _$StaffUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? activities = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<StaffActivity>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<OrderServiceType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffUserImplCopyWith<$Res>
    implements $StaffUserCopyWith<$Res> {
  factory _$$StaffUserImplCopyWith(
          _$StaffUserImpl value, $Res Function(_$StaffUserImpl) then) =
      __$$StaffUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstName,
      String? lastName,
      String? username,
      List<StaffActivity> activities,
      List<OrderServiceType> services});
}

/// @nodoc
class __$$StaffUserImplCopyWithImpl<$Res>
    extends _$StaffUserCopyWithImpl<$Res, _$StaffUserImpl>
    implements _$$StaffUserImplCopyWith<$Res> {
  __$$StaffUserImplCopyWithImpl(
      _$StaffUserImpl _value, $Res Function(_$StaffUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? activities = null,
    Object? services = null,
  }) {
    return _then(_$StaffUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<StaffActivity>,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<OrderServiceType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffUserImpl extends _StaffUser {
  _$StaffUserImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.username,
      required final List<StaffActivity> activities,
      required final List<OrderServiceType> services})
      : _activities = activities,
        _services = services,
        super._();

  factory _$StaffUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffUserImplFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String? lastName;
  @override
  final String? username;
  final List<StaffActivity> _activities;
  @override
  List<StaffActivity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  final List<OrderServiceType> _services;
  @override
  List<OrderServiceType> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'StaffUser(id: $id, firstName: $firstName, lastName: $lastName, username: $username, activities: $activities, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      username,
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_services));

  /// Create a copy of StaffUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffUserImplCopyWith<_$StaffUserImpl> get copyWith =>
      __$$StaffUserImplCopyWithImpl<_$StaffUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffUserImplToJson(
      this,
    );
  }
}

abstract class _StaffUser extends StaffUser {
  factory _StaffUser(
      {required final int id,
      required final String firstName,
      required final String? lastName,
      required final String? username,
      required final List<StaffActivity> activities,
      required final List<OrderServiceType> services}) = _$StaffUserImpl;
  _StaffUser._() : super._();

  factory _StaffUser.fromJson(Map<String, dynamic> json) =
      _$StaffUserImpl.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String? get lastName;
  @override
  String? get username;
  @override
  List<StaffActivity> get activities;
  @override
  List<OrderServiceType> get services;

  /// Create a copy of StaffUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffUserImplCopyWith<_$StaffUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
