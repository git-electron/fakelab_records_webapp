// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_recording_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookRecordingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bookButtonPressed,
    required TResult Function(BookingsState bookingsState) bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bookButtonPressed,
    TResult? Function(BookingsState bookingsState)? bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bookButtonPressed,
    TResult Function(BookingsState bookingsState)? bookingsStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookButtonPressed value) bookButtonPressed,
    required TResult Function(_BookingsStateChanged value) bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookButtonPressed value)? bookButtonPressed,
    TResult? Function(_BookingsStateChanged value)? bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookButtonPressed value)? bookButtonPressed,
    TResult Function(_BookingsStateChanged value)? bookingsStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRecordingEventCopyWith<$Res> {
  factory $BookRecordingEventCopyWith(
          BookRecordingEvent value, $Res Function(BookRecordingEvent) then) =
      _$BookRecordingEventCopyWithImpl<$Res, BookRecordingEvent>;
}

/// @nodoc
class _$BookRecordingEventCopyWithImpl<$Res, $Val extends BookRecordingEvent>
    implements $BookRecordingEventCopyWith<$Res> {
  _$BookRecordingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRecordingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BookButtonPressedImplCopyWith<$Res> {
  factory _$$BookButtonPressedImplCopyWith(_$BookButtonPressedImpl value,
          $Res Function(_$BookButtonPressedImpl) then) =
      __$$BookButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookButtonPressedImplCopyWithImpl<$Res>
    extends _$BookRecordingEventCopyWithImpl<$Res, _$BookButtonPressedImpl>
    implements _$$BookButtonPressedImplCopyWith<$Res> {
  __$$BookButtonPressedImplCopyWithImpl(_$BookButtonPressedImpl _value,
      $Res Function(_$BookButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookButtonPressedImpl implements _BookButtonPressed {
  const _$BookButtonPressedImpl();

  @override
  String toString() {
    return 'BookRecordingEvent.bookButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bookButtonPressed,
    required TResult Function(BookingsState bookingsState) bookingsStateChanged,
  }) {
    return bookButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bookButtonPressed,
    TResult? Function(BookingsState bookingsState)? bookingsStateChanged,
  }) {
    return bookButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bookButtonPressed,
    TResult Function(BookingsState bookingsState)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (bookButtonPressed != null) {
      return bookButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookButtonPressed value) bookButtonPressed,
    required TResult Function(_BookingsStateChanged value) bookingsStateChanged,
  }) {
    return bookButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookButtonPressed value)? bookButtonPressed,
    TResult? Function(_BookingsStateChanged value)? bookingsStateChanged,
  }) {
    return bookButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookButtonPressed value)? bookButtonPressed,
    TResult Function(_BookingsStateChanged value)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (bookButtonPressed != null) {
      return bookButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _BookButtonPressed implements BookRecordingEvent {
  const factory _BookButtonPressed() = _$BookButtonPressedImpl;
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
    extends _$BookRecordingEventCopyWithImpl<$Res, _$BookingsStateChangedImpl>
    implements _$$BookingsStateChangedImplCopyWith<$Res> {
  __$$BookingsStateChangedImplCopyWithImpl(_$BookingsStateChangedImpl _value,
      $Res Function(_$BookingsStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingEvent
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

  /// Create a copy of BookRecordingEvent
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
    return 'BookRecordingEvent.bookingsStateChanged(bookingsState: $bookingsState)';
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

  /// Create a copy of BookRecordingEvent
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
    required TResult Function() bookButtonPressed,
    required TResult Function(BookingsState bookingsState) bookingsStateChanged,
  }) {
    return bookingsStateChanged(bookingsState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bookButtonPressed,
    TResult? Function(BookingsState bookingsState)? bookingsStateChanged,
  }) {
    return bookingsStateChanged?.call(bookingsState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bookButtonPressed,
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
    required TResult Function(_BookButtonPressed value) bookButtonPressed,
    required TResult Function(_BookingsStateChanged value) bookingsStateChanged,
  }) {
    return bookingsStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookButtonPressed value)? bookButtonPressed,
    TResult? Function(_BookingsStateChanged value)? bookingsStateChanged,
  }) {
    return bookingsStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookButtonPressed value)? bookButtonPressed,
    TResult Function(_BookingsStateChanged value)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (bookingsStateChanged != null) {
      return bookingsStateChanged(this);
    }
    return orElse();
  }
}

abstract class _BookingsStateChanged implements BookRecordingEvent {
  const factory _BookingsStateChanged(final BookingsState bookingsState) =
      _$BookingsStateChangedImpl;

  BookingsState get bookingsState;

  /// Create a copy of BookRecordingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingsStateChangedImplCopyWith<_$BookingsStateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookRecordingState {
  BookingsState get bookingsState => throw _privateConstructorUsedError;
  DateTime get selectedTime => throw _privateConstructorUsedError;
  Duration get selectedDuration => throw _privateConstructorUsedError;
  bool get isBookButtonLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of BookRecordingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRecordingStateCopyWith<BookRecordingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRecordingStateCopyWith<$Res> {
  factory $BookRecordingStateCopyWith(
          BookRecordingState value, $Res Function(BookRecordingState) then) =
      _$BookRecordingStateCopyWithImpl<$Res, BookRecordingState>;
  @useResult
  $Res call(
      {BookingsState bookingsState,
      DateTime selectedTime,
      Duration selectedDuration,
      bool isBookButtonLoading,
      String? errorMessage});

  $BookingsStateCopyWith<$Res> get bookingsState;
}

/// @nodoc
class _$BookRecordingStateCopyWithImpl<$Res, $Val extends BookRecordingState>
    implements $BookRecordingStateCopyWith<$Res> {
  _$BookRecordingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRecordingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsState = null,
    Object? selectedTime = null,
    Object? selectedDuration = null,
    Object? isBookButtonLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      bookingsState: null == bookingsState
          ? _value.bookingsState
          : bookingsState // ignore: cast_nullable_to_non_nullable
              as BookingsState,
      selectedTime: null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDuration: null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isBookButtonLoading: null == isBookButtonLoading
          ? _value.isBookButtonLoading
          : isBookButtonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BookRecordingState
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
abstract class _$$BookRecordingStateImplCopyWith<$Res>
    implements $BookRecordingStateCopyWith<$Res> {
  factory _$$BookRecordingStateImplCopyWith(_$BookRecordingStateImpl value,
          $Res Function(_$BookRecordingStateImpl) then) =
      __$$BookRecordingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookingsState bookingsState,
      DateTime selectedTime,
      Duration selectedDuration,
      bool isBookButtonLoading,
      String? errorMessage});

  @override
  $BookingsStateCopyWith<$Res> get bookingsState;
}

/// @nodoc
class __$$BookRecordingStateImplCopyWithImpl<$Res>
    extends _$BookRecordingStateCopyWithImpl<$Res, _$BookRecordingStateImpl>
    implements _$$BookRecordingStateImplCopyWith<$Res> {
  __$$BookRecordingStateImplCopyWithImpl(_$BookRecordingStateImpl _value,
      $Res Function(_$BookRecordingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsState = null,
    Object? selectedTime = null,
    Object? selectedDuration = null,
    Object? isBookButtonLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BookRecordingStateImpl(
      bookingsState: null == bookingsState
          ? _value.bookingsState
          : bookingsState // ignore: cast_nullable_to_non_nullable
              as BookingsState,
      selectedTime: null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDuration: null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isBookButtonLoading: null == isBookButtonLoading
          ? _value.isBookButtonLoading
          : isBookButtonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BookRecordingStateImpl extends _BookRecordingState {
  const _$BookRecordingStateImpl(
      {required this.bookingsState,
      required this.selectedTime,
      required this.selectedDuration,
      this.isBookButtonLoading = false,
      this.errorMessage = null})
      : super._();

  @override
  final BookingsState bookingsState;
  @override
  final DateTime selectedTime;
  @override
  final Duration selectedDuration;
  @override
  @JsonKey()
  final bool isBookButtonLoading;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'BookRecordingState(bookingsState: $bookingsState, selectedTime: $selectedTime, selectedDuration: $selectedDuration, isBookButtonLoading: $isBookButtonLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRecordingStateImpl &&
            (identical(other.bookingsState, bookingsState) ||
                other.bookingsState == bookingsState) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            (identical(other.selectedDuration, selectedDuration) ||
                other.selectedDuration == selectedDuration) &&
            (identical(other.isBookButtonLoading, isBookButtonLoading) ||
                other.isBookButtonLoading == isBookButtonLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingsState, selectedTime,
      selectedDuration, isBookButtonLoading, errorMessage);

  /// Create a copy of BookRecordingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRecordingStateImplCopyWith<_$BookRecordingStateImpl> get copyWith =>
      __$$BookRecordingStateImplCopyWithImpl<_$BookRecordingStateImpl>(
          this, _$identity);
}

abstract class _BookRecordingState extends BookRecordingState {
  const factory _BookRecordingState(
      {required final BookingsState bookingsState,
      required final DateTime selectedTime,
      required final Duration selectedDuration,
      final bool isBookButtonLoading,
      final String? errorMessage}) = _$BookRecordingStateImpl;
  const _BookRecordingState._() : super._();

  @override
  BookingsState get bookingsState;
  @override
  DateTime get selectedTime;
  @override
  Duration get selectedDuration;
  @override
  bool get isBookButtonLoading;
  @override
  String? get errorMessage;

  /// Create a copy of BookRecordingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRecordingStateImplCopyWith<_$BookRecordingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
