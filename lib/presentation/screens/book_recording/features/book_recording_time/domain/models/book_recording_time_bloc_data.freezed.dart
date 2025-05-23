// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_recording_time_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookRecordingTimeBlocData {
  DateTime get selectedDate => throw _privateConstructorUsedError;
  BookingsBloc get bookingsBloc => throw _privateConstructorUsedError;

  /// Create a copy of BookRecordingTimeBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRecordingTimeBlocDataCopyWith<BookRecordingTimeBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRecordingTimeBlocDataCopyWith<$Res> {
  factory $BookRecordingTimeBlocDataCopyWith(BookRecordingTimeBlocData value,
          $Res Function(BookRecordingTimeBlocData) then) =
      _$BookRecordingTimeBlocDataCopyWithImpl<$Res, BookRecordingTimeBlocData>;
  @useResult
  $Res call({DateTime selectedDate, BookingsBloc bookingsBloc});
}

/// @nodoc
class _$BookRecordingTimeBlocDataCopyWithImpl<$Res,
        $Val extends BookRecordingTimeBlocData>
    implements $BookRecordingTimeBlocDataCopyWith<$Res> {
  _$BookRecordingTimeBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRecordingTimeBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? bookingsBloc = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookingsBloc: null == bookingsBloc
          ? _value.bookingsBloc
          : bookingsBloc // ignore: cast_nullable_to_non_nullable
              as BookingsBloc,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookRecordingTimeBlocDataImplCopyWith<$Res>
    implements $BookRecordingTimeBlocDataCopyWith<$Res> {
  factory _$$BookRecordingTimeBlocDataImplCopyWith(
          _$BookRecordingTimeBlocDataImpl value,
          $Res Function(_$BookRecordingTimeBlocDataImpl) then) =
      __$$BookRecordingTimeBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDate, BookingsBloc bookingsBloc});
}

/// @nodoc
class __$$BookRecordingTimeBlocDataImplCopyWithImpl<$Res>
    extends _$BookRecordingTimeBlocDataCopyWithImpl<$Res,
        _$BookRecordingTimeBlocDataImpl>
    implements _$$BookRecordingTimeBlocDataImplCopyWith<$Res> {
  __$$BookRecordingTimeBlocDataImplCopyWithImpl(
      _$BookRecordingTimeBlocDataImpl _value,
      $Res Function(_$BookRecordingTimeBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingTimeBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? bookingsBloc = null,
  }) {
    return _then(_$BookRecordingTimeBlocDataImpl(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookingsBloc: null == bookingsBloc
          ? _value.bookingsBloc
          : bookingsBloc // ignore: cast_nullable_to_non_nullable
              as BookingsBloc,
    ));
  }
}

/// @nodoc

class _$BookRecordingTimeBlocDataImpl implements _BookRecordingTimeBlocData {
  const _$BookRecordingTimeBlocDataImpl(
      {required this.selectedDate, required this.bookingsBloc});

  @override
  final DateTime selectedDate;
  @override
  final BookingsBloc bookingsBloc;

  @override
  String toString() {
    return 'BookRecordingTimeBlocData(selectedDate: $selectedDate, bookingsBloc: $bookingsBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRecordingTimeBlocDataImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.bookingsBloc, bookingsBloc) ||
                other.bookingsBloc == bookingsBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate, bookingsBloc);

  /// Create a copy of BookRecordingTimeBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRecordingTimeBlocDataImplCopyWith<_$BookRecordingTimeBlocDataImpl>
      get copyWith => __$$BookRecordingTimeBlocDataImplCopyWithImpl<
          _$BookRecordingTimeBlocDataImpl>(this, _$identity);
}

abstract class _BookRecordingTimeBlocData implements BookRecordingTimeBlocData {
  const factory _BookRecordingTimeBlocData(
          {required final DateTime selectedDate,
          required final BookingsBloc bookingsBloc}) =
      _$BookRecordingTimeBlocDataImpl;

  @override
  DateTime get selectedDate;
  @override
  BookingsBloc get bookingsBloc;

  /// Create a copy of BookRecordingTimeBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRecordingTimeBlocDataImplCopyWith<_$BookRecordingTimeBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
