// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_recording_date_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookRecordingDateBlocData {
  BookingsBloc get bookingsBloc => throw _privateConstructorUsedError;

  /// Create a copy of BookRecordingDateBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookRecordingDateBlocDataCopyWith<BookRecordingDateBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRecordingDateBlocDataCopyWith<$Res> {
  factory $BookRecordingDateBlocDataCopyWith(BookRecordingDateBlocData value,
          $Res Function(BookRecordingDateBlocData) then) =
      _$BookRecordingDateBlocDataCopyWithImpl<$Res, BookRecordingDateBlocData>;
  @useResult
  $Res call({BookingsBloc bookingsBloc});
}

/// @nodoc
class _$BookRecordingDateBlocDataCopyWithImpl<$Res,
        $Val extends BookRecordingDateBlocData>
    implements $BookRecordingDateBlocDataCopyWith<$Res> {
  _$BookRecordingDateBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookRecordingDateBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsBloc = null,
  }) {
    return _then(_value.copyWith(
      bookingsBloc: null == bookingsBloc
          ? _value.bookingsBloc
          : bookingsBloc // ignore: cast_nullable_to_non_nullable
              as BookingsBloc,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookRecordingDateBlocDataImplCopyWith<$Res>
    implements $BookRecordingDateBlocDataCopyWith<$Res> {
  factory _$$BookRecordingDateBlocDataImplCopyWith(
          _$BookRecordingDateBlocDataImpl value,
          $Res Function(_$BookRecordingDateBlocDataImpl) then) =
      __$$BookRecordingDateBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingsBloc bookingsBloc});
}

/// @nodoc
class __$$BookRecordingDateBlocDataImplCopyWithImpl<$Res>
    extends _$BookRecordingDateBlocDataCopyWithImpl<$Res,
        _$BookRecordingDateBlocDataImpl>
    implements _$$BookRecordingDateBlocDataImplCopyWith<$Res> {
  __$$BookRecordingDateBlocDataImplCopyWithImpl(
      _$BookRecordingDateBlocDataImpl _value,
      $Res Function(_$BookRecordingDateBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookRecordingDateBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingsBloc = null,
  }) {
    return _then(_$BookRecordingDateBlocDataImpl(
      bookingsBloc: null == bookingsBloc
          ? _value.bookingsBloc
          : bookingsBloc // ignore: cast_nullable_to_non_nullable
              as BookingsBloc,
    ));
  }
}

/// @nodoc

class _$BookRecordingDateBlocDataImpl implements _BookRecordingDateBlocData {
  const _$BookRecordingDateBlocDataImpl({required this.bookingsBloc});

  @override
  final BookingsBloc bookingsBloc;

  @override
  String toString() {
    return 'BookRecordingDateBlocData(bookingsBloc: $bookingsBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRecordingDateBlocDataImpl &&
            (identical(other.bookingsBloc, bookingsBloc) ||
                other.bookingsBloc == bookingsBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingsBloc);

  /// Create a copy of BookRecordingDateBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRecordingDateBlocDataImplCopyWith<_$BookRecordingDateBlocDataImpl>
      get copyWith => __$$BookRecordingDateBlocDataImplCopyWithImpl<
          _$BookRecordingDateBlocDataImpl>(this, _$identity);
}

abstract class _BookRecordingDateBlocData implements BookRecordingDateBlocData {
  const factory _BookRecordingDateBlocData(
          {required final BookingsBloc bookingsBloc}) =
      _$BookRecordingDateBlocDataImpl;

  @override
  BookingsBloc get bookingsBloc;

  /// Create a copy of BookRecordingDateBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookRecordingDateBlocDataImplCopyWith<_$BookRecordingDateBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
