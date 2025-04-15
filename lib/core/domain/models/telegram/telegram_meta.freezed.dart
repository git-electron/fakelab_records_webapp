// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TelegramMeta _$TelegramMetaFromJson(Map<String, dynamic> json) {
  return _TelegramMeta.fromJson(json);
}

/// @nodoc
mixin _$TelegramMeta {
  String get platform => throw _privateConstructorUsedError;
  SafeAreaInset get safeAreaInset => throw _privateConstructorUsedError;
  SafeAreaInset get contentSafeAreaInset => throw _privateConstructorUsedError;

  /// Serializes this TelegramMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramMetaCopyWith<TelegramMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramMetaCopyWith<$Res> {
  factory $TelegramMetaCopyWith(
          TelegramMeta value, $Res Function(TelegramMeta) then) =
      _$TelegramMetaCopyWithImpl<$Res, TelegramMeta>;
  @useResult
  $Res call(
      {String platform,
      SafeAreaInset safeAreaInset,
      SafeAreaInset contentSafeAreaInset});

  $SafeAreaInsetCopyWith<$Res> get safeAreaInset;
  $SafeAreaInsetCopyWith<$Res> get contentSafeAreaInset;
}

/// @nodoc
class _$TelegramMetaCopyWithImpl<$Res, $Val extends TelegramMeta>
    implements $TelegramMetaCopyWith<$Res> {
  _$TelegramMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? safeAreaInset = null,
    Object? contentSafeAreaInset = null,
  }) {
    return _then(_value.copyWith(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      safeAreaInset: null == safeAreaInset
          ? _value.safeAreaInset
          : safeAreaInset // ignore: cast_nullable_to_non_nullable
              as SafeAreaInset,
      contentSafeAreaInset: null == contentSafeAreaInset
          ? _value.contentSafeAreaInset
          : contentSafeAreaInset // ignore: cast_nullable_to_non_nullable
              as SafeAreaInset,
    ) as $Val);
  }

  /// Create a copy of TelegramMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafeAreaInsetCopyWith<$Res> get safeAreaInset {
    return $SafeAreaInsetCopyWith<$Res>(_value.safeAreaInset, (value) {
      return _then(_value.copyWith(safeAreaInset: value) as $Val);
    });
  }

  /// Create a copy of TelegramMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafeAreaInsetCopyWith<$Res> get contentSafeAreaInset {
    return $SafeAreaInsetCopyWith<$Res>(_value.contentSafeAreaInset, (value) {
      return _then(_value.copyWith(contentSafeAreaInset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TelegramMetaImplCopyWith<$Res>
    implements $TelegramMetaCopyWith<$Res> {
  factory _$$TelegramMetaImplCopyWith(
          _$TelegramMetaImpl value, $Res Function(_$TelegramMetaImpl) then) =
      __$$TelegramMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String platform,
      SafeAreaInset safeAreaInset,
      SafeAreaInset contentSafeAreaInset});

  @override
  $SafeAreaInsetCopyWith<$Res> get safeAreaInset;
  @override
  $SafeAreaInsetCopyWith<$Res> get contentSafeAreaInset;
}

/// @nodoc
class __$$TelegramMetaImplCopyWithImpl<$Res>
    extends _$TelegramMetaCopyWithImpl<$Res, _$TelegramMetaImpl>
    implements _$$TelegramMetaImplCopyWith<$Res> {
  __$$TelegramMetaImplCopyWithImpl(
      _$TelegramMetaImpl _value, $Res Function(_$TelegramMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? safeAreaInset = null,
    Object? contentSafeAreaInset = null,
  }) {
    return _then(_$TelegramMetaImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      safeAreaInset: null == safeAreaInset
          ? _value.safeAreaInset
          : safeAreaInset // ignore: cast_nullable_to_non_nullable
              as SafeAreaInset,
      contentSafeAreaInset: null == contentSafeAreaInset
          ? _value.contentSafeAreaInset
          : contentSafeAreaInset // ignore: cast_nullable_to_non_nullable
              as SafeAreaInset,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelegramMetaImpl extends _TelegramMeta {
  _$TelegramMetaImpl(
      {required this.platform,
      required this.safeAreaInset,
      required this.contentSafeAreaInset})
      : super._();

  factory _$TelegramMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramMetaImplFromJson(json);

  @override
  final String platform;
  @override
  final SafeAreaInset safeAreaInset;
  @override
  final SafeAreaInset contentSafeAreaInset;

  @override
  String toString() {
    return 'TelegramMeta(platform: $platform, safeAreaInset: $safeAreaInset, contentSafeAreaInset: $contentSafeAreaInset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramMetaImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.safeAreaInset, safeAreaInset) ||
                other.safeAreaInset == safeAreaInset) &&
            (identical(other.contentSafeAreaInset, contentSafeAreaInset) ||
                other.contentSafeAreaInset == contentSafeAreaInset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, platform, safeAreaInset, contentSafeAreaInset);

  /// Create a copy of TelegramMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramMetaImplCopyWith<_$TelegramMetaImpl> get copyWith =>
      __$$TelegramMetaImplCopyWithImpl<_$TelegramMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramMetaImplToJson(
      this,
    );
  }
}

abstract class _TelegramMeta extends TelegramMeta {
  factory _TelegramMeta(
      {required final String platform,
      required final SafeAreaInset safeAreaInset,
      required final SafeAreaInset contentSafeAreaInset}) = _$TelegramMetaImpl;
  _TelegramMeta._() : super._();

  factory _TelegramMeta.fromJson(Map<String, dynamic> json) =
      _$TelegramMetaImpl.fromJson;

  @override
  String get platform;
  @override
  SafeAreaInset get safeAreaInset;
  @override
  SafeAreaInset get contentSafeAreaInset;

  /// Create a copy of TelegramMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramMetaImplCopyWith<_$TelegramMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
