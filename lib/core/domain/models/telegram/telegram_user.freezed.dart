// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TelegramUser _$TelegramUserFromJson(Map<String, dynamic> json) {
  return _TelegramUser.fromJson(json);
}

/// @nodoc
mixin _$TelegramUser {
  int get id => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get surname => throw _privateConstructorUsedError;

  /// Serializes this TelegramUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramUserCopyWith<TelegramUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramUserCopyWith<$Res> {
  factory $TelegramUserCopyWith(
          TelegramUser value, $Res Function(TelegramUser) then) =
      _$TelegramUserCopyWithImpl<$Res, TelegramUser>;
  @useResult
  $Res call(
      {int id,
      String? photoUrl,
      String? username,
      @JsonKey(name: 'first_name') String? name,
      @JsonKey(name: 'last_name') String? surname});
}

/// @nodoc
class _$TelegramUserCopyWithImpl<$Res, $Val extends TelegramUser>
    implements $TelegramUserCopyWith<$Res> {
  _$TelegramUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TelegramUserImplCopyWith<$Res>
    implements $TelegramUserCopyWith<$Res> {
  factory _$$TelegramUserImplCopyWith(
          _$TelegramUserImpl value, $Res Function(_$TelegramUserImpl) then) =
      __$$TelegramUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? photoUrl,
      String? username,
      @JsonKey(name: 'first_name') String? name,
      @JsonKey(name: 'last_name') String? surname});
}

/// @nodoc
class __$$TelegramUserImplCopyWithImpl<$Res>
    extends _$TelegramUserCopyWithImpl<$Res, _$TelegramUserImpl>
    implements _$$TelegramUserImplCopyWith<$Res> {
  __$$TelegramUserImplCopyWithImpl(
      _$TelegramUserImpl _value, $Res Function(_$TelegramUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_$TelegramUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelegramUserImpl extends _TelegramUser {
  _$TelegramUserImpl(
      {required this.id,
      this.photoUrl,
      this.username,
      @JsonKey(name: 'first_name') this.name,
      @JsonKey(name: 'last_name') this.surname})
      : super._();

  factory _$TelegramUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramUserImplFromJson(json);

  @override
  final int id;
  @override
  final String? photoUrl;
  @override
  final String? username;
  @override
  @JsonKey(name: 'first_name')
  final String? name;
  @override
  @JsonKey(name: 'last_name')
  final String? surname;

  @override
  String toString() {
    return 'TelegramUser(id: $id, photoUrl: $photoUrl, username: $username, name: $name, surname: $surname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, photoUrl, username, name, surname);

  /// Create a copy of TelegramUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramUserImplCopyWith<_$TelegramUserImpl> get copyWith =>
      __$$TelegramUserImplCopyWithImpl<_$TelegramUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramUserImplToJson(
      this,
    );
  }
}

abstract class _TelegramUser extends TelegramUser {
  factory _TelegramUser(
      {required final int id,
      final String? photoUrl,
      final String? username,
      @JsonKey(name: 'first_name') final String? name,
      @JsonKey(name: 'last_name') final String? surname}) = _$TelegramUserImpl;
  _TelegramUser._() : super._();

  factory _TelegramUser.fromJson(Map<String, dynamic> json) =
      _$TelegramUserImpl.fromJson;

  @override
  int get id;
  @override
  String? get photoUrl;
  @override
  String? get username;
  @override
  @JsonKey(name: 'first_name')
  String? get name;
  @override
  @JsonKey(name: 'last_name')
  String? get surname;

  /// Create a copy of TelegramUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramUserImplCopyWith<_$TelegramUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
