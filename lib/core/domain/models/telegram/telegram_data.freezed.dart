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
  TelegramUser get user => throw _privateConstructorUsedError;
  TelegramMeta get meta => throw _privateConstructorUsedError;

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
  $Res call({TelegramUser user, TelegramMeta meta});

  $TelegramUserCopyWith<$Res> get user;
  $TelegramMetaCopyWith<$Res> get meta;
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
    Object? user = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TelegramUser,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as TelegramMeta,
    ) as $Val);
  }

  /// Create a copy of TelegramData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelegramUserCopyWith<$Res> get user {
    return $TelegramUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of TelegramData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelegramMetaCopyWith<$Res> get meta {
    return $TelegramMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
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
  $Res call({TelegramUser user, TelegramMeta meta});

  @override
  $TelegramUserCopyWith<$Res> get user;
  @override
  $TelegramMetaCopyWith<$Res> get meta;
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
    Object? user = null,
    Object? meta = null,
  }) {
    return _then(_$TelegramDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TelegramUser,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as TelegramMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelegramDataImpl extends _TelegramData {
  _$TelegramDataImpl({required this.user, required this.meta}) : super._();

  factory _$TelegramDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramDataImplFromJson(json);

  @override
  final TelegramUser user;
  @override
  final TelegramMeta meta;

  @override
  String toString() {
    return 'TelegramData(user: $user, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, meta);

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

abstract class _TelegramData extends TelegramData {
  factory _TelegramData(
      {required final TelegramUser user,
      required final TelegramMeta meta}) = _$TelegramDataImpl;
  _TelegramData._() : super._();

  factory _TelegramData.fromJson(Map<String, dynamic> json) =
      _$TelegramDataImpl.fromJson;

  @override
  TelegramUser get user;
  @override
  TelegramMeta get meta;

  /// Create a copy of TelegramData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramDataImplCopyWith<_$TelegramDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
