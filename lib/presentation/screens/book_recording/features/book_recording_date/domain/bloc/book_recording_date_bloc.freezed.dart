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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) dateSelected,
    required TResult Function(BookingsState bookingsState) bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? dateSelected,
    TResult? Function(BookingsState bookingsState)? bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dateSelected,
    TResult Function(BookingsState bookingsState)? bookingsStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_BookingsStateChanged value) bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_BookingsStateChanged value)? bookingsStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_BookingsStateChanged value)? bookingsStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRecordingDateEventCopyWith<$Res> {
  factory $BookRecordingDateEventCopyWith(BookRecordingDateEvent value,
          $Res Function(BookRecordingDateEvent) then) =
      _$BookRecordingDateEventCopyWithImpl<$Res, BookRecordingDateEvent>;
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
}

/// @nodoc
abstract class _$$DateSelectedImplCopyWith<$Res> {
  factory _$$DateSelectedImplCopyWith(
          _$DateSelectedImpl value, $Res Function(_$DateSelectedImpl) then) =
      __$$DateSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$DateSelectedImplCopyWithImpl<$Res>
    extends _$BookRecordingDateEventCopyWithImpl<$Res, _$DateSelectedImpl>
    implements _$$DateSelectedImplCopyWith<$Res> {
  __$$DateSelectedImplCopyWithImpl(
      _$DateSelectedImpl _value, $Res Function(_$DateSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingDateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$DateSelectedImpl(
      null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateSelectedImpl implements _DateSelected {
  const _$DateSelectedImpl(this.selectedDate);

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'BookRecordingDateEvent.dateSelected(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateSelectedImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  /// Create a copy of BookRecordingDateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateSelectedImplCopyWith<_$DateSelectedImpl> get copyWith =>
      __$$DateSelectedImplCopyWithImpl<_$DateSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) dateSelected,
    required TResult Function(BookingsState bookingsState) bookingsStateChanged,
  }) {
    return dateSelected(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? dateSelected,
    TResult? Function(BookingsState bookingsState)? bookingsStateChanged,
  }) {
    return dateSelected?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dateSelected,
    TResult Function(BookingsState bookingsState)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_BookingsStateChanged value) bookingsStateChanged,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_BookingsStateChanged value)? bookingsStateChanged,
  }) {
    return dateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_BookingsStateChanged value)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _DateSelected implements BookRecordingDateEvent {
  const factory _DateSelected(final DateTime selectedDate) = _$DateSelectedImpl;

  DateTime get selectedDate;

  /// Create a copy of BookRecordingDateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateSelectedImplCopyWith<_$DateSelectedImpl> get copyWith =>
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
    extends _$BookRecordingDateEventCopyWithImpl<$Res,
        _$BookingsStateChangedImpl>
    implements _$$BookingsStateChangedImplCopyWith<$Res> {
  __$$BookingsStateChangedImplCopyWithImpl(_$BookingsStateChangedImpl _value,
      $Res Function(_$BookingsStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingDateEvent
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

  /// Create a copy of BookRecordingDateEvent
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
    return 'BookRecordingDateEvent.bookingsStateChanged(bookingsState: $bookingsState)';
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

  /// Create a copy of BookRecordingDateEvent
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
    required TResult Function(DateTime selectedDate) dateSelected,
    required TResult Function(BookingsState bookingsState) bookingsStateChanged,
  }) {
    return bookingsStateChanged(bookingsState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? dateSelected,
    TResult? Function(BookingsState bookingsState)? bookingsStateChanged,
  }) {
    return bookingsStateChanged?.call(bookingsState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dateSelected,
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
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_BookingsStateChanged value) bookingsStateChanged,
  }) {
    return bookingsStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_BookingsStateChanged value)? bookingsStateChanged,
  }) {
    return bookingsStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_BookingsStateChanged value)? bookingsStateChanged,
    required TResult orElse(),
  }) {
    if (bookingsStateChanged != null) {
      return bookingsStateChanged(this);
    }
    return orElse();
  }
}

abstract class _BookingsStateChanged implements BookRecordingDateEvent {
  const factory _BookingsStateChanged(final BookingsState bookingsState) =
      _$BookingsStateChangedImpl;

  BookingsState get bookingsState;

  /// Create a copy of BookRecordingDateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingsStateChangedImplCopyWith<_$BookingsStateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookRecordingDateState {
  BookingsState get bookingsState => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;

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
  $Res call({BookingsState bookingsState, DateTime? selectedDate});

  $BookingsStateCopyWith<$Res> get bookingsState;
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
    Object? bookingsState = null,
    Object? selectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      bookingsState: null == bookingsState
          ? _value.bookingsState
          : bookingsState // ignore: cast_nullable_to_non_nullable
              as BookingsState,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of BookRecordingDateState
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
abstract class _$$BookRecordingDateStateImplCopyWith<$Res>
    implements $BookRecordingDateStateCopyWith<$Res> {
  factory _$$BookRecordingDateStateImplCopyWith(
          _$BookRecordingDateStateImpl value,
          $Res Function(_$BookRecordingDateStateImpl) then) =
      __$$BookRecordingDateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingsState bookingsState, DateTime? selectedDate});

  @override
  $BookingsStateCopyWith<$Res> get bookingsState;
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
    Object? bookingsState = null,
    Object? selectedDate = freezed,
  }) {
    return _then(_$BookRecordingDateStateImpl(
      bookingsState: null == bookingsState
          ? _value.bookingsState
          : bookingsState // ignore: cast_nullable_to_non_nullable
              as BookingsState,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$BookRecordingDateStateImpl extends _BookRecordingDateState {
  const _$BookRecordingDateStateImpl(
      {required this.bookingsState, this.selectedDate = null})
      : super._();

  @override
  final BookingsState bookingsState;
  @override
  @JsonKey()
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'BookRecordingDateState(bookingsState: $bookingsState, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRecordingDateStateImpl &&
            (identical(other.bookingsState, bookingsState) ||
                other.bookingsState == bookingsState) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingsState, selectedDate);

  /// Create a copy of BookRecordingDateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRecordingDateStateImplCopyWith<_$BookRecordingDateStateImpl>
      get copyWith => __$$BookRecordingDateStateImplCopyWithImpl<
          _$BookRecordingDateStateImpl>(this, _$identity);
}

abstract class _BookRecordingDateState extends BookRecordingDateState {
  const factory _BookRecordingDateState(
      {required final BookingsState bookingsState,
      final DateTime? selectedDate}) = _$BookRecordingDateStateImpl;
  const _BookRecordingDateState._() : super._();

  @override
  BookingsState get bookingsState;
  @override
  DateTime? get selectedDate;

  /// Create a copy of BookRecordingDateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRecordingDateStateImplCopyWith<_$BookRecordingDateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
