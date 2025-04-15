// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safe_area_inset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SafeAreaInset _$SafeAreaInsetFromJson(Map<String, dynamic> json) {
  return _SafeAreaInset.fromJson(json);
}

/// @nodoc
mixin _$SafeAreaInset {
  int get top => throw _privateConstructorUsedError;
  int get left => throw _privateConstructorUsedError;
  int get right => throw _privateConstructorUsedError;
  int get bottom => throw _privateConstructorUsedError;

  /// Serializes this SafeAreaInset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SafeAreaInset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SafeAreaInsetCopyWith<SafeAreaInset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafeAreaInsetCopyWith<$Res> {
  factory $SafeAreaInsetCopyWith(
          SafeAreaInset value, $Res Function(SafeAreaInset) then) =
      _$SafeAreaInsetCopyWithImpl<$Res, SafeAreaInset>;
  @useResult
  $Res call({int top, int left, int right, int bottom});
}

/// @nodoc
class _$SafeAreaInsetCopyWithImpl<$Res, $Val extends SafeAreaInset>
    implements $SafeAreaInsetCopyWith<$Res> {
  _$SafeAreaInsetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SafeAreaInset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? left = null,
    Object? right = null,
    Object? bottom = null,
  }) {
    return _then(_value.copyWith(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as int,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SafeAreaInsetImplCopyWith<$Res>
    implements $SafeAreaInsetCopyWith<$Res> {
  factory _$$SafeAreaInsetImplCopyWith(
          _$SafeAreaInsetImpl value, $Res Function(_$SafeAreaInsetImpl) then) =
      __$$SafeAreaInsetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int top, int left, int right, int bottom});
}

/// @nodoc
class __$$SafeAreaInsetImplCopyWithImpl<$Res>
    extends _$SafeAreaInsetCopyWithImpl<$Res, _$SafeAreaInsetImpl>
    implements _$$SafeAreaInsetImplCopyWith<$Res> {
  __$$SafeAreaInsetImplCopyWithImpl(
      _$SafeAreaInsetImpl _value, $Res Function(_$SafeAreaInsetImpl) _then)
      : super(_value, _then);

  /// Create a copy of SafeAreaInset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? left = null,
    Object? right = null,
    Object? bottom = null,
  }) {
    return _then(_$SafeAreaInsetImpl(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as int,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SafeAreaInsetImpl implements _SafeAreaInset {
  _$SafeAreaInsetImpl(
      {required this.top,
      required this.left,
      required this.right,
      required this.bottom});

  factory _$SafeAreaInsetImpl.fromJson(Map<String, dynamic> json) =>
      _$$SafeAreaInsetImplFromJson(json);

  @override
  final int top;
  @override
  final int left;
  @override
  final int right;
  @override
  final int bottom;

  @override
  String toString() {
    return 'SafeAreaInset(top: $top, left: $left, right: $right, bottom: $bottom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SafeAreaInsetImpl &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, top, left, right, bottom);

  /// Create a copy of SafeAreaInset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SafeAreaInsetImplCopyWith<_$SafeAreaInsetImpl> get copyWith =>
      __$$SafeAreaInsetImplCopyWithImpl<_$SafeAreaInsetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SafeAreaInsetImplToJson(
      this,
    );
  }
}

abstract class _SafeAreaInset implements SafeAreaInset {
  factory _SafeAreaInset(
      {required final int top,
      required final int left,
      required final int right,
      required final int bottom}) = _$SafeAreaInsetImpl;

  factory _SafeAreaInset.fromJson(Map<String, dynamic> json) =
      _$SafeAreaInsetImpl.fromJson;

  @override
  int get top;
  @override
  int get left;
  @override
  int get right;
  @override
  int get bottom;

  /// Create a copy of SafeAreaInset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SafeAreaInsetImplCopyWith<_$SafeAreaInsetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
