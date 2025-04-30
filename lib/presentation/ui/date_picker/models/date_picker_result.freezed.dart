// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_picker_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DatePickerResult {
  DateTime? get date => throw _privateConstructorUsedError;
  bool get isReset => throw _privateConstructorUsedError;

  /// Create a copy of DatePickerResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatePickerResultCopyWith<DatePickerResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatePickerResultCopyWith<$Res> {
  factory $DatePickerResultCopyWith(
          DatePickerResult value, $Res Function(DatePickerResult) then) =
      _$DatePickerResultCopyWithImpl<$Res, DatePickerResult>;
  @useResult
  $Res call({DateTime? date, bool isReset});
}

/// @nodoc
class _$DatePickerResultCopyWithImpl<$Res, $Val extends DatePickerResult>
    implements $DatePickerResultCopyWith<$Res> {
  _$DatePickerResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatePickerResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? isReset = null,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isReset: null == isReset
          ? _value.isReset
          : isReset // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatePickerResultImplCopyWith<$Res>
    implements $DatePickerResultCopyWith<$Res> {
  factory _$$DatePickerResultImplCopyWith(_$DatePickerResultImpl value,
          $Res Function(_$DatePickerResultImpl) then) =
      __$$DatePickerResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? date, bool isReset});
}

/// @nodoc
class __$$DatePickerResultImplCopyWithImpl<$Res>
    extends _$DatePickerResultCopyWithImpl<$Res, _$DatePickerResultImpl>
    implements _$$DatePickerResultImplCopyWith<$Res> {
  __$$DatePickerResultImplCopyWithImpl(_$DatePickerResultImpl _value,
      $Res Function(_$DatePickerResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatePickerResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? isReset = null,
  }) {
    return _then(_$DatePickerResultImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isReset: null == isReset
          ? _value.isReset
          : isReset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DatePickerResultImpl implements _DatePickerResult {
  _$DatePickerResultImpl({this.date, this.isReset = false});

  @override
  final DateTime? date;
  @override
  @JsonKey()
  final bool isReset;

  @override
  String toString() {
    return 'DatePickerResult(date: $date, isReset: $isReset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatePickerResultImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isReset, isReset) || other.isReset == isReset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, isReset);

  /// Create a copy of DatePickerResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatePickerResultImplCopyWith<_$DatePickerResultImpl> get copyWith =>
      __$$DatePickerResultImplCopyWithImpl<_$DatePickerResultImpl>(
          this, _$identity);
}

abstract class _DatePickerResult implements DatePickerResult {
  factory _DatePickerResult({final DateTime? date, final bool isReset}) =
      _$DatePickerResultImpl;

  @override
  DateTime? get date;
  @override
  bool get isReset;

  /// Create a copy of DatePickerResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatePickerResultImplCopyWith<_$DatePickerResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DatePickerRangeResult {
  PickerDateRange? get dateRange => throw _privateConstructorUsedError;
  bool get isReset => throw _privateConstructorUsedError;

  /// Create a copy of DatePickerRangeResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatePickerRangeResultCopyWith<DatePickerRangeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatePickerRangeResultCopyWith<$Res> {
  factory $DatePickerRangeResultCopyWith(DatePickerRangeResult value,
          $Res Function(DatePickerRangeResult) then) =
      _$DatePickerRangeResultCopyWithImpl<$Res, DatePickerRangeResult>;
  @useResult
  $Res call({PickerDateRange? dateRange, bool isReset});
}

/// @nodoc
class _$DatePickerRangeResultCopyWithImpl<$Res,
        $Val extends DatePickerRangeResult>
    implements $DatePickerRangeResultCopyWith<$Res> {
  _$DatePickerRangeResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatePickerRangeResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateRange = freezed,
    Object? isReset = null,
  }) {
    return _then(_value.copyWith(
      dateRange: freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as PickerDateRange?,
      isReset: null == isReset
          ? _value.isReset
          : isReset // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatePickerRangeResultImplCopyWith<$Res>
    implements $DatePickerRangeResultCopyWith<$Res> {
  factory _$$DatePickerRangeResultImplCopyWith(
          _$DatePickerRangeResultImpl value,
          $Res Function(_$DatePickerRangeResultImpl) then) =
      __$$DatePickerRangeResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PickerDateRange? dateRange, bool isReset});
}

/// @nodoc
class __$$DatePickerRangeResultImplCopyWithImpl<$Res>
    extends _$DatePickerRangeResultCopyWithImpl<$Res,
        _$DatePickerRangeResultImpl>
    implements _$$DatePickerRangeResultImplCopyWith<$Res> {
  __$$DatePickerRangeResultImplCopyWithImpl(_$DatePickerRangeResultImpl _value,
      $Res Function(_$DatePickerRangeResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatePickerRangeResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateRange = freezed,
    Object? isReset = null,
  }) {
    return _then(_$DatePickerRangeResultImpl(
      dateRange: freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as PickerDateRange?,
      isReset: null == isReset
          ? _value.isReset
          : isReset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DatePickerRangeResultImpl implements _DatePickerRangeResult {
  _$DatePickerRangeResultImpl({this.dateRange, this.isReset = false});

  @override
  final PickerDateRange? dateRange;
  @override
  @JsonKey()
  final bool isReset;

  @override
  String toString() {
    return 'DatePickerRangeResult(dateRange: $dateRange, isReset: $isReset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatePickerRangeResultImpl &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.isReset, isReset) || other.isReset == isReset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateRange, isReset);

  /// Create a copy of DatePickerRangeResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatePickerRangeResultImplCopyWith<_$DatePickerRangeResultImpl>
      get copyWith => __$$DatePickerRangeResultImplCopyWithImpl<
          _$DatePickerRangeResultImpl>(this, _$identity);
}

abstract class _DatePickerRangeResult implements DatePickerRangeResult {
  factory _DatePickerRangeResult(
      {final PickerDateRange? dateRange,
      final bool isReset}) = _$DatePickerRangeResultImpl;

  @override
  PickerDateRange? get dateRange;
  @override
  bool get isReset;

  /// Create a copy of DatePickerRangeResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatePickerRangeResultImplCopyWith<_$DatePickerRangeResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
