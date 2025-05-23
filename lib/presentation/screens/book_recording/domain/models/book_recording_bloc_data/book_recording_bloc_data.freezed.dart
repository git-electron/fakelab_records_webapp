// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_recording_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookRecordingBlocData {
  DateTime get selectedTime => throw _privateConstructorUsedError;
  Duration get selectedDuration => throw _privateConstructorUsedError;
  BookingsBloc get bookingsBloc => throw _privateConstructorUsedError;

  /// Create a copy of BookRecordingBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRecordingBlocDataCopyWith<BookRecordingBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRecordingBlocDataCopyWith<$Res> {
  factory $BookRecordingBlocDataCopyWith(BookRecordingBlocData value,
          $Res Function(BookRecordingBlocData) then) =
      _$BookRecordingBlocDataCopyWithImpl<$Res, BookRecordingBlocData>;
  @useResult
  $Res call(
      {DateTime selectedTime,
      Duration selectedDuration,
      BookingsBloc bookingsBloc});
}

/// @nodoc
class _$BookRecordingBlocDataCopyWithImpl<$Res,
        $Val extends BookRecordingBlocData>
    implements $BookRecordingBlocDataCopyWith<$Res> {
  _$BookRecordingBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRecordingBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTime = null,
    Object? selectedDuration = null,
    Object? bookingsBloc = null,
  }) {
    return _then(_value.copyWith(
      selectedTime: null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDuration: null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      bookingsBloc: null == bookingsBloc
          ? _value.bookingsBloc
          : bookingsBloc // ignore: cast_nullable_to_non_nullable
              as BookingsBloc,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookRecordingBlocDataImplCopyWith<$Res>
    implements $BookRecordingBlocDataCopyWith<$Res> {
  factory _$$BookRecordingBlocDataImplCopyWith(
          _$BookRecordingBlocDataImpl value,
          $Res Function(_$BookRecordingBlocDataImpl) then) =
      __$$BookRecordingBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime selectedTime,
      Duration selectedDuration,
      BookingsBloc bookingsBloc});
}

/// @nodoc
class __$$BookRecordingBlocDataImplCopyWithImpl<$Res>
    extends _$BookRecordingBlocDataCopyWithImpl<$Res,
        _$BookRecordingBlocDataImpl>
    implements _$$BookRecordingBlocDataImplCopyWith<$Res> {
  __$$BookRecordingBlocDataImplCopyWithImpl(_$BookRecordingBlocDataImpl _value,
      $Res Function(_$BookRecordingBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTime = null,
    Object? selectedDuration = null,
    Object? bookingsBloc = null,
  }) {
    return _then(_$BookRecordingBlocDataImpl(
      selectedTime: null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDuration: null == selectedDuration
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      bookingsBloc: null == bookingsBloc
          ? _value.bookingsBloc
          : bookingsBloc // ignore: cast_nullable_to_non_nullable
              as BookingsBloc,
    ));
  }
}

/// @nodoc

class _$BookRecordingBlocDataImpl implements _BookRecordingBlocData {
  const _$BookRecordingBlocDataImpl(
      {required this.selectedTime,
      required this.selectedDuration,
      required this.bookingsBloc});

  @override
  final DateTime selectedTime;
  @override
  final Duration selectedDuration;
  @override
  final BookingsBloc bookingsBloc;

  @override
  String toString() {
    return 'BookRecordingBlocData(selectedTime: $selectedTime, selectedDuration: $selectedDuration, bookingsBloc: $bookingsBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRecordingBlocDataImpl &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            (identical(other.selectedDuration, selectedDuration) ||
                other.selectedDuration == selectedDuration) &&
            (identical(other.bookingsBloc, bookingsBloc) ||
                other.bookingsBloc == bookingsBloc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedTime, selectedDuration, bookingsBloc);

  /// Create a copy of BookRecordingBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRecordingBlocDataImplCopyWith<_$BookRecordingBlocDataImpl>
      get copyWith => __$$BookRecordingBlocDataImplCopyWithImpl<
          _$BookRecordingBlocDataImpl>(this, _$identity);
}

abstract class _BookRecordingBlocData implements BookRecordingBlocData {
  const factory _BookRecordingBlocData(
      {required final DateTime selectedTime,
      required final Duration selectedDuration,
      required final BookingsBloc bookingsBloc}) = _$BookRecordingBlocDataImpl;

  @override
  DateTime get selectedTime;
  @override
  Duration get selectedDuration;
  @override
  BookingsBloc get bookingsBloc;

  /// Create a copy of BookRecordingBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRecordingBlocDataImplCopyWith<_$BookRecordingBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
