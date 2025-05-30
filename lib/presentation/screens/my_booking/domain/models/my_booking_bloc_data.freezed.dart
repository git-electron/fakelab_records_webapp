// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_booking_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyBookingBlocData {
  String get bookingId => throw _privateConstructorUsedError;

  /// Create a copy of MyBookingBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyBookingBlocDataCopyWith<MyBookingBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBookingBlocDataCopyWith<$Res> {
  factory $MyBookingBlocDataCopyWith(
          MyBookingBlocData value, $Res Function(MyBookingBlocData) then) =
      _$MyBookingBlocDataCopyWithImpl<$Res, MyBookingBlocData>;
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class _$MyBookingBlocDataCopyWithImpl<$Res, $Val extends MyBookingBlocData>
    implements $MyBookingBlocDataCopyWith<$Res> {
  _$MyBookingBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyBookingBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_value.copyWith(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyBookingBlocDataImplCopyWith<$Res>
    implements $MyBookingBlocDataCopyWith<$Res> {
  factory _$$MyBookingBlocDataImplCopyWith(_$MyBookingBlocDataImpl value,
          $Res Function(_$MyBookingBlocDataImpl) then) =
      __$$MyBookingBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class __$$MyBookingBlocDataImplCopyWithImpl<$Res>
    extends _$MyBookingBlocDataCopyWithImpl<$Res, _$MyBookingBlocDataImpl>
    implements _$$MyBookingBlocDataImplCopyWith<$Res> {
  __$$MyBookingBlocDataImplCopyWithImpl(_$MyBookingBlocDataImpl _value,
      $Res Function(_$MyBookingBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyBookingBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$MyBookingBlocDataImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MyBookingBlocDataImpl implements _MyBookingBlocData {
  const _$MyBookingBlocDataImpl({required this.bookingId});

  @override
  final String bookingId;

  @override
  String toString() {
    return 'MyBookingBlocData(bookingId: $bookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyBookingBlocDataImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  /// Create a copy of MyBookingBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyBookingBlocDataImplCopyWith<_$MyBookingBlocDataImpl> get copyWith =>
      __$$MyBookingBlocDataImplCopyWithImpl<_$MyBookingBlocDataImpl>(
          this, _$identity);
}

abstract class _MyBookingBlocData implements MyBookingBlocData {
  const factory _MyBookingBlocData({required final String bookingId}) =
      _$MyBookingBlocDataImpl;

  @override
  String get bookingId;

  /// Create a copy of MyBookingBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyBookingBlocDataImplCopyWith<_$MyBookingBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
