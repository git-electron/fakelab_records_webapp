// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TelegramData _$TelegramDataFromJson(Map<String, dynamic> json) {
  return _TelegramData.fromJson(json);
}

/// @nodoc
mixin _$TelegramData {
  int get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get surname => throw _privateConstructorUsedError;

  /// Serializes this TelegramData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramDataCopyWith<TelegramData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramDataCopyWith<$Res> {
  factory $TelegramDataCopyWith(
          TelegramData value, $Res Function(TelegramData) then) =
      _$TelegramDataCopyWithImpl<$Res, TelegramData>;
  @useResult
  $Res call(
      {int id,
      String? username,
      String? photoUrl,
      @JsonKey(name: 'first_name') String? name,
      @JsonKey(name: 'last_name') String? surname});
}

/// @nodoc
class _$TelegramDataCopyWithImpl<$Res, $Val extends TelegramData>
    implements $TelegramDataCopyWith<$Res> {
  _$TelegramDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? photoUrl = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TelegramDataImplCopyWith<$Res>
    implements $TelegramDataCopyWith<$Res> {
  factory _$$TelegramDataImplCopyWith(
          _$TelegramDataImpl value, $Res Function(_$TelegramDataImpl) then) =
      __$$TelegramDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? username,
      String? photoUrl,
      @JsonKey(name: 'first_name') String? name,
      @JsonKey(name: 'last_name') String? surname});
}

/// @nodoc
class __$$TelegramDataImplCopyWithImpl<$Res>
    extends _$TelegramDataCopyWithImpl<$Res, _$TelegramDataImpl>
    implements _$$TelegramDataImplCopyWith<$Res> {
  __$$TelegramDataImplCopyWithImpl(
      _$TelegramDataImpl _value, $Res Function(_$TelegramDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? photoUrl = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_$TelegramDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
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
class _$TelegramDataImpl implements _TelegramData {
  _$TelegramDataImpl(
      {required this.id,
      this.username = '',
      this.photoUrl = '',
      @JsonKey(name: 'first_name') this.name = '',
      @JsonKey(name: 'last_name') this.surname = ''});

  factory _$TelegramDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String? username;
  @override
  @JsonKey()
  final String? photoUrl;
  @override
  @JsonKey(name: 'first_name')
  final String? name;
  @override
  @JsonKey(name: 'last_name')
  final String? surname;

  @override
  String toString() {
    return 'TelegramData(id: $id, username: $username, photoUrl: $photoUrl, name: $name, surname: $surname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, photoUrl, name, surname);

  /// Create a copy of TelegramData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramDataImplCopyWith<_$TelegramDataImpl> get copyWith =>
      __$$TelegramDataImplCopyWithImpl<_$TelegramDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramDataImplToJson(
      this,
    );
  }
}

abstract class _TelegramData implements TelegramData {
  factory _TelegramData(
      {required final int id,
      final String? username,
      final String? photoUrl,
      @JsonKey(name: 'first_name') final String? name,
      @JsonKey(name: 'last_name') final String? surname}) = _$TelegramDataImpl;

  factory _TelegramData.fromJson(Map<String, dynamic> json) =
      _$TelegramDataImpl.fromJson;

  @override
  int get id;
  @override
  String? get username;
  @override
  String? get photoUrl;
  @override
  @JsonKey(name: 'first_name')
  String? get name;
  @override
  @JsonKey(name: 'last_name')
  String? get surname;

  /// Create a copy of TelegramData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramDataImplCopyWith<_$TelegramDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
