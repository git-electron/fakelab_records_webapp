// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_recording_time_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookRecordingTimeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedTime) timeSelected,
    required TResult Function(Duration selectedDuration) durationSelected,
    required TResult Function(BookingsState bookingsState) bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedTime)? timeSelected,
    TResult? Function(Duration selectedDuration)? durationSelected,
    TResult? Function(BookingsState bookingsState)? bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedTime)? timeSelected,
    TResult Function(Duration selectedDuration)? durationSelected,
    TResult Function(BookingsState bookingsState)? bookingsStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_DurationSelected value) durationSelected,
    required TResult Function(_BookingsStateChanged value) bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimeSelected value)? timeSelected,
    TResult? Function(_DurationSelected value)? durationSelected,
    TResult? Function(_BookingsStateChanged value)? bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_DurationSelected value)? durationSelected,
    TResult Function(_BookingsStateChanged value)? bookingsStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRecordingTimeEventCopyWith<$Res> {
  factory $BookRecordingTimeEventCopyWith(BookRecordingTimeEvent value,
          $Res Function(BookRecordingTimeEvent) then) =
      _$BookRecordingTimeEventCopyWithImpl<$Res, BookRecordingTimeEvent>;
}

/// @nodoc
class _$BookRecordingTimeEventCopyWithImpl<$Res,
        $Val extends BookRecordingTimeEvent>
    implements $BookRecordingTimeEventCopyWith<$Res> {
  _$BookRecordingTimeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TimeSelectedImplCopyWith<$Res> {
  factory _$$TimeSelectedImplCopyWith(
          _$TimeSelectedImpl value, $Res Function(_$TimeSelectedImpl) then) =
      __$$TimeSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedTime});
}

/// @nodoc
class __$$TimeSelectedImplCopyWithImpl<$Res>
    extends _$BookRecordingTimeEventCopyWithImpl<$Res, _$TimeSelectedImpl>
    implements _$$TimeSelectedImplCopyWith<$Res> {
  __$$TimeSelectedImplCopyWithImpl(
      _$TimeSelectedImpl _value, $Res Function(_$TimeSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTime = null,
  }) {
    return _then(_$TimeSelectedImpl(
      null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TimeSelectedImpl implements _TimeSelected {
  const _$TimeSelectedImpl(this.selectedTime);

  @override
  final DateTime selectedTime;

  @override
  String toString() {
    return 'BookRecordingTimeEvent.timeSelected(selectedTime: $selectedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSelectedImpl &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTime);

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSelectedImplCopyWith<_$TimeSelectedImpl> get copyWith =>
      __$$TimeSelectedImplCopyWithImpl<_$TimeSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedTime) timeSelected,
    required TResult Function(Duration selectedDuration) durationSelected,
    required TResult Function(BookingsState bookingsState) bookingsStateChanged,
  }) {
    return timeSelected(selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedTime)? timeSelected,
    TResult? Function(Duration selectedDuration)? durationSelected,
    TResult? Function(BookingsState bookingsState)? bookingsStateChanged,
  }) {
    return timeSelected?.call(selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedTime)? timeSelected,
    TResult Function(Duration selectedDuration)? durationSelected,
    TResult Function(BookingsState bookingsState)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (timeSelected != null) {
      return timeSelected(selectedTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_DurationSelected value) durationSelected,
    required TResult Function(_BookingsStateChanged value) bookingsStateChanged,
  }) {
    return timeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimeSelected value)? timeSelected,
    TResult? Function(_DurationSelected value)? durationSelected,
    TResult? Function(_BookingsStateChanged value)? bookingsStateChanged,
  }) {
    return timeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_DurationSelected value)? durationSelected,
    TResult Function(_BookingsStateChanged value)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (timeSelected != null) {
      return timeSelected(this);
    }
    return orElse();
  }
}

abstract class _TimeSelected implements BookRecordingTimeEvent {
  const factory _TimeSelected(final DateTime selectedTime) = _$TimeSelectedImpl;

  DateTime get selectedTime;

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeSelectedImplCopyWith<_$TimeSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DurationSelectedImplCopyWith<$Res> {
  factory _$$DurationSelectedImplCopyWith(_$DurationSelectedImpl value,
          $Res Function(_$DurationSelectedImpl) then) =
      __$$DurationSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration selectedDuration});
}

/// @nodoc
class __$$DurationSelectedImplCopyWithImpl<$Res>
    extends _$BookRecordingTimeEventCopyWithImpl<$Res, _$DurationSelectedImpl>
    implements _$$DurationSelectedImplCopyWith<$Res> {
  __$$DurationSelectedImplCopyWithImpl(_$DurationSelectedImpl _value,
      $Res Function(_$DurationSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDuration = null,
  }) {
    return _then(_$DurationSelectedImpl(
      null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$DurationSelectedImpl implements _DurationSelected {
  const _$DurationSelectedImpl(this.selectedDuration);

  @override
  final Duration selectedDuration;

  @override
  String toString() {
    return 'BookRecordingTimeEvent.durationSelected(selectedDuration: $selectedDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationSelectedImpl &&
            (identical(other.selectedDuration, selectedDuration) ||
                other.selectedDuration == selectedDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDuration);

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationSelectedImplCopyWith<_$DurationSelectedImpl> get copyWith =>
      __$$DurationSelectedImplCopyWithImpl<_$DurationSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedTime) timeSelected,
    required TResult Function(Duration selectedDuration) durationSelected,
    required TResult Function(BookingsState bookingsState) bookingsStateChanged,
  }) {
    return durationSelected(selectedDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedTime)? timeSelected,
    TResult? Function(Duration selectedDuration)? durationSelected,
    TResult? Function(BookingsState bookingsState)? bookingsStateChanged,
  }) {
    return durationSelected?.call(selectedDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedTime)? timeSelected,
    TResult Function(Duration selectedDuration)? durationSelected,
    TResult Function(BookingsState bookingsState)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (durationSelected != null) {
      return durationSelected(selectedDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_DurationSelected value) durationSelected,
    required TResult Function(_BookingsStateChanged value) bookingsStateChanged,
  }) {
    return durationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimeSelected value)? timeSelected,
    TResult? Function(_DurationSelected value)? durationSelected,
    TResult? Function(_BookingsStateChanged value)? bookingsStateChanged,
  }) {
    return durationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_DurationSelected value)? durationSelected,
    TResult Function(_BookingsStateChanged value)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (durationSelected != null) {
      return durationSelected(this);
    }
    return orElse();
  }
}

abstract class _DurationSelected implements BookRecordingTimeEvent {
  const factory _DurationSelected(final Duration selectedDuration) =
      _$DurationSelectedImpl;

  Duration get selectedDuration;

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationSelectedImplCopyWith<_$DurationSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingsStateChangedImplCopyWith<$Res> {
  factory _$$BookingsStateChangedImplCopyWith(_$BookingsStateChangedImpl value,
          $Res Function(_$BookingsStateChangedImpl) then) =
      __$$BookingsStateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingsState bookingsState});

  $BookingsStateCopyWith<$Res> get bookingsState;
}

/// @nodoc
class __$$BookingsStateChangedImplCopyWithImpl<$Res>
    extends _$BookRecordingTimeEventCopyWithImpl<$Res,
        _$BookingsStateChangedImpl>
    implements _$$BookingsStateChangedImplCopyWith<$Res> {
  __$$BookingsStateChangedImplCopyWithImpl(_$BookingsStateChangedImpl _value,
      $Res Function(_$BookingsStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsState = null,
  }) {
    return _then(_$BookingsStateChangedImpl(
      null == bookingsState
          ? _value.bookingsState
          : bookingsState // ignore: cast_nullable_to_non_nullable
              as BookingsState,
    ));
  }

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingsStateCopyWith<$Res> get bookingsState {
    return $BookingsStateCopyWith<$Res>(_value.bookingsState, (value) {
      return _then(_value.copyWith(bookingsState: value));
    });
  }
}

/// @nodoc

class _$BookingsStateChangedImpl implements _BookingsStateChanged {
  const _$BookingsStateChangedImpl(this.bookingsState);

  @override
  final BookingsState bookingsState;

  @override
  String toString() {
    return 'BookRecordingTimeEvent.bookingsStateChanged(bookingsState: $bookingsState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingsStateChangedImpl &&
            (identical(other.bookingsState, bookingsState) ||
                other.bookingsState == bookingsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingsState);

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingsStateChangedImplCopyWith<_$BookingsStateChangedImpl>
      get copyWith =>
          __$$BookingsStateChangedImplCopyWithImpl<_$BookingsStateChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedTime) timeSelected,
    required TResult Function(Duration selectedDuration) durationSelected,
    required TResult Function(BookingsState bookingsState) bookingsStateChanged,
  }) {
    return bookingsStateChanged(bookingsState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedTime)? timeSelected,
    TResult? Function(Duration selectedDuration)? durationSelected,
    TResult? Function(BookingsState bookingsState)? bookingsStateChanged,
  }) {
    return bookingsStateChanged?.call(bookingsState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedTime)? timeSelected,
    TResult Function(Duration selectedDuration)? durationSelected,
    TResult Function(BookingsState bookingsState)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (bookingsStateChanged != null) {
      return bookingsStateChanged(bookingsState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimeSelected value) timeSelected,
    required TResult Function(_DurationSelected value) durationSelected,
    required TResult Function(_BookingsStateChanged value) bookingsStateChanged,
  }) {
    return bookingsStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimeSelected value)? timeSelected,
    TResult? Function(_DurationSelected value)? durationSelected,
    TResult? Function(_BookingsStateChanged value)? bookingsStateChanged,
  }) {
    return bookingsStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimeSelected value)? timeSelected,
    TResult Function(_DurationSelected value)? durationSelected,
    TResult Function(_BookingsStateChanged value)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (bookingsStateChanged != null) {
      return bookingsStateChanged(this);
    }
    return orElse();
  }
}

abstract class _BookingsStateChanged implements BookRecordingTimeEvent {
  const factory _BookingsStateChanged(final BookingsState bookingsState) =
      _$BookingsStateChangedImpl;

  BookingsState get bookingsState;

  /// Create a copy of BookRecordingTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingsStateChangedImplCopyWith<_$BookingsStateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookRecordingTimeState {
  DateTime get selectedDate => throw _privateConstructorUsedError;
  BookingsState get bookingsState => throw _privateConstructorUsedError;
  DateTime? get selectedTime => throw _privateConstructorUsedError;
  Duration get selectedDuration => throw _privateConstructorUsedError;

  /// Create a copy of BookRecordingTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRecordingTimeStateCopyWith<BookRecordingTimeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRecordingTimeStateCopyWith<$Res> {
  factory $BookRecordingTimeStateCopyWith(BookRecordingTimeState value,
          $Res Function(BookRecordingTimeState) then) =
      _$BookRecordingTimeStateCopyWithImpl<$Res, BookRecordingTimeState>;
  @useResult
  $Res call(
      {DateTime selectedDate,
      BookingsState bookingsState,
      DateTime? selectedTime,
      Duration selectedDuration});

  $BookingsStateCopyWith<$Res> get bookingsState;
}

/// @nodoc
class _$BookRecordingTimeStateCopyWithImpl<$Res,
        $Val extends BookRecordingTimeState>
    implements $BookRecordingTimeStateCopyWith<$Res> {
  _$BookRecordingTimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRecordingTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? bookingsState = null,
    Object? selectedTime = freezed,
    Object? selectedDuration = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookingsState: null == bookingsState
          ? _value.bookingsState
          : bookingsState // ignore: cast_nullable_to_non_nullable
              as BookingsState,
      selectedTime: freezed == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDuration: null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }

  /// Create a copy of BookRecordingTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingsStateCopyWith<$Res> get bookingsState {
    return $BookingsStateCopyWith<$Res>(_value.bookingsState, (value) {
      return _then(_value.copyWith(bookingsState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookRecordingTimeStateImplCopyWith<$Res>
    implements $BookRecordingTimeStateCopyWith<$Res> {
  factory _$$BookRecordingTimeStateImplCopyWith(
          _$BookRecordingTimeStateImpl value,
          $Res Function(_$BookRecordingTimeStateImpl) then) =
      __$$BookRecordingTimeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime selectedDate,
      BookingsState bookingsState,
      DateTime? selectedTime,
      Duration selectedDuration});

  @override
  $BookingsStateCopyWith<$Res> get bookingsState;
}

/// @nodoc
class __$$BookRecordingTimeStateImplCopyWithImpl<$Res>
    extends _$BookRecordingTimeStateCopyWithImpl<$Res,
        _$BookRecordingTimeStateImpl>
    implements _$$BookRecordingTimeStateImplCopyWith<$Res> {
  __$$BookRecordingTimeStateImplCopyWithImpl(
      _$BookRecordingTimeStateImpl _value,
      $Res Function(_$BookRecordingTimeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? bookingsState = null,
    Object? selectedTime = freezed,
    Object? selectedDuration = null,
  }) {
    return _then(_$BookRecordingTimeStateImpl(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookingsState: null == bookingsState
          ? _value.bookingsState
          : bookingsState // ignore: cast_nullable_to_non_nullable
              as BookingsState,
      selectedTime: freezed == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDuration: null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$BookRecordingTimeStateImpl extends _BookRecordingTimeState {
  const _$BookRecordingTimeStateImpl(
      {required this.selectedDate,
      required this.bookingsState,
      this.selectedTime = null,
      this.selectedDuration = _kHourDuration})
      : super._();

  @override
  final DateTime selectedDate;
  @override
  final BookingsState bookingsState;
  @override
  @JsonKey()
  final DateTime? selectedTime;
  @override
  @JsonKey()
  final Duration selectedDuration;

  @override
  String toString() {
    return 'BookRecordingTimeState(selectedDate: $selectedDate, bookingsState: $bookingsState, selectedTime: $selectedTime, selectedDuration: $selectedDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRecordingTimeStateImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.bookingsState, bookingsState) ||
                other.bookingsState == bookingsState) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            (identical(other.selectedDuration, selectedDuration) ||
                other.selectedDuration == selectedDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedDate, bookingsState, selectedTime, selectedDuration);

  /// Create a copy of BookRecordingTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRecordingTimeStateImplCopyWith<_$BookRecordingTimeStateImpl>
      get copyWith => __$$BookRecordingTimeStateImplCopyWithImpl<
          _$BookRecordingTimeStateImpl>(this, _$identity);
}

abstract class _BookRecordingTimeState extends BookRecordingTimeState {
  const factory _BookRecordingTimeState(
      {required final DateTime selectedDate,
      required final BookingsState bookingsState,
      final DateTime? selectedTime,
      final Duration selectedDuration}) = _$BookRecordingTimeStateImpl;
  const _BookRecordingTimeState._() : super._();

  @override
  DateTime get selectedDate;
  @override
  BookingsState get bookingsState;
  @override
  DateTime? get selectedTime;
  @override
  Duration get selectedDuration;

  /// Create a copy of BookRecordingTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRecordingTimeStateImplCopyWith<_$BookRecordingTimeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
