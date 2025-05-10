// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_recording_date_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookRecordingDateEvent {
  DateTime get selectedDay => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDay) daySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDay)? daySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDay)? daySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DaySelected value) daySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DaySelected value)? daySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DaySelected value)? daySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BookRecordingDateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRecordingDateEventCopyWith<BookRecordingDateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRecordingDateEventCopyWith<$Res> {
  factory $BookRecordingDateEventCopyWith(BookRecordingDateEvent value,
          $Res Function(BookRecordingDateEvent) then) =
      _$BookRecordingDateEventCopyWithImpl<$Res, BookRecordingDateEvent>;
  @useResult
  $Res call({DateTime selectedDay});
}

/// @nodoc
class _$BookRecordingDateEventCopyWithImpl<$Res,
        $Val extends BookRecordingDateEvent>
    implements $BookRecordingDateEventCopyWith<$Res> {
  _$BookRecordingDateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRecordingDateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
  }) {
    return _then(_value.copyWith(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DaySelectedImplCopyWith<$Res>
    implements $BookRecordingDateEventCopyWith<$Res> {
  factory _$$DaySelectedImplCopyWith(
          _$DaySelectedImpl value, $Res Function(_$DaySelectedImpl) then) =
      __$$DaySelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDay});
}

/// @nodoc
class __$$DaySelectedImplCopyWithImpl<$Res>
    extends _$BookRecordingDateEventCopyWithImpl<$Res, _$DaySelectedImpl>
    implements _$$DaySelectedImplCopyWith<$Res> {
  __$$DaySelectedImplCopyWithImpl(
      _$DaySelectedImpl _value, $Res Function(_$DaySelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingDateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
  }) {
    return _then(_$DaySelectedImpl(
      null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DaySelectedImpl implements _DaySelected {
  const _$DaySelectedImpl(this.selectedDay);

  @override
  final DateTime selectedDay;

  @override
  String toString() {
    return 'BookRecordingDateEvent.daySelected(selectedDay: $selectedDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaySelectedImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay);

  /// Create a copy of BookRecordingDateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DaySelectedImplCopyWith<_$DaySelectedImpl> get copyWith =>
      __$$DaySelectedImplCopyWithImpl<_$DaySelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDay) daySelected,
  }) {
    return daySelected(selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDay)? daySelected,
  }) {
    return daySelected?.call(selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDay)? daySelected,
    required TResult orElse(),
  }) {
    if (daySelected != null) {
      return daySelected(selectedDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DaySelected value) daySelected,
  }) {
    return daySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DaySelected value)? daySelected,
  }) {
    return daySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DaySelected value)? daySelected,
    required TResult orElse(),
  }) {
    if (daySelected != null) {
      return daySelected(this);
    }
    return orElse();
  }
}

abstract class _DaySelected implements BookRecordingDateEvent {
  const factory _DaySelected(final DateTime selectedDay) = _$DaySelectedImpl;

  @override
  DateTime get selectedDay;

  /// Create a copy of BookRecordingDateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DaySelectedImplCopyWith<_$DaySelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookRecordingDateState {
  DateTime? get selectedDay => throw _privateConstructorUsedError;

  /// Create a copy of BookRecordingDateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRecordingDateStateCopyWith<BookRecordingDateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRecordingDateStateCopyWith<$Res> {
  factory $BookRecordingDateStateCopyWith(BookRecordingDateState value,
          $Res Function(BookRecordingDateState) then) =
      _$BookRecordingDateStateCopyWithImpl<$Res, BookRecordingDateState>;
  @useResult
  $Res call({DateTime? selectedDay});
}

/// @nodoc
class _$BookRecordingDateStateCopyWithImpl<$Res,
        $Val extends BookRecordingDateState>
    implements $BookRecordingDateStateCopyWith<$Res> {
  _$BookRecordingDateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRecordingDateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookRecordingDateStateImplCopyWith<$Res>
    implements $BookRecordingDateStateCopyWith<$Res> {
  factory _$$BookRecordingDateStateImplCopyWith(
          _$BookRecordingDateStateImpl value,
          $Res Function(_$BookRecordingDateStateImpl) then) =
      __$$BookRecordingDateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? selectedDay});
}

/// @nodoc
class __$$BookRecordingDateStateImplCopyWithImpl<$Res>
    extends _$BookRecordingDateStateCopyWithImpl<$Res,
        _$BookRecordingDateStateImpl>
    implements _$$BookRecordingDateStateImplCopyWith<$Res> {
  __$$BookRecordingDateStateImplCopyWithImpl(
      _$BookRecordingDateStateImpl _value,
      $Res Function(_$BookRecordingDateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingDateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = freezed,
  }) {
    return _then(_$BookRecordingDateStateImpl(
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$BookRecordingDateStateImpl implements _BookRecordingDateState {
  const _$BookRecordingDateStateImpl({this.selectedDay = null});

  @override
  @JsonKey()
  final DateTime? selectedDay;

  @override
  String toString() {
    return 'BookRecordingDateState(selectedDay: $selectedDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRecordingDateStateImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay);

  /// Create a copy of BookRecordingDateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRecordingDateStateImplCopyWith<_$BookRecordingDateStateImpl>
      get copyWith => __$$BookRecordingDateStateImplCopyWithImpl<
          _$BookRecordingDateStateImpl>(this, _$identity);
}

abstract class _BookRecordingDateState implements BookRecordingDateState {
  const factory _BookRecordingDateState({final DateTime? selectedDay}) =
      _$BookRecordingDateStateImpl;

  @override
  DateTime? get selectedDay;

  /// Create a copy of BookRecordingDateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRecordingDateStateImplCopyWith<_$BookRecordingDateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
