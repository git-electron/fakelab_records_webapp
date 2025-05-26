// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingFilters _$BookingFiltersFromJson(Map<String, dynamic> json) {
  return _BookingFilters.fromJson(json);
}

/// @nodoc
mixin _$BookingFilters {
  String get userIdStatus => throw _privateConstructorUsedError;

  /// Serializes this BookingFilters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingFiltersCopyWith<BookingFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingFiltersCopyWith<$Res> {
  factory $BookingFiltersCopyWith(
          BookingFilters value, $Res Function(BookingFilters) then) =
      _$BookingFiltersCopyWithImpl<$Res, BookingFilters>;
  @useResult
  $Res call({String userIdStatus});
}

/// @nodoc
class _$BookingFiltersCopyWithImpl<$Res, $Val extends BookingFilters>
    implements $BookingFiltersCopyWith<$Res> {
  _$BookingFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIdStatus = null,
  }) {
    return _then(_value.copyWith(
      userIdStatus: null == userIdStatus
          ? _value.userIdStatus
          : userIdStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingFiltersImplCopyWith<$Res>
    implements $BookingFiltersCopyWith<$Res> {
  factory _$$BookingFiltersImplCopyWith(_$BookingFiltersImpl value,
          $Res Function(_$BookingFiltersImpl) then) =
      __$$BookingFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userIdStatus});
}

/// @nodoc
class __$$BookingFiltersImplCopyWithImpl<$Res>
    extends _$BookingFiltersCopyWithImpl<$Res, _$BookingFiltersImpl>
    implements _$$BookingFiltersImplCopyWith<$Res> {
  __$$BookingFiltersImplCopyWithImpl(
      _$BookingFiltersImpl _value, $Res Function(_$BookingFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIdStatus = null,
  }) {
    return _then(_$BookingFiltersImpl(
      userIdStatus: null == userIdStatus
          ? _value.userIdStatus
          : userIdStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingFiltersImpl implements _BookingFilters {
  _$BookingFiltersImpl({required this.userIdStatus});

  factory _$BookingFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingFiltersImplFromJson(json);

  @override
  final String userIdStatus;

  @override
  String toString() {
    return 'BookingFilters(userIdStatus: $userIdStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingFiltersImpl &&
            (identical(other.userIdStatus, userIdStatus) ||
                other.userIdStatus == userIdStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userIdStatus);

  /// Create a copy of BookingFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingFiltersImplCopyWith<_$BookingFiltersImpl> get copyWith =>
      __$$BookingFiltersImplCopyWithImpl<_$BookingFiltersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingFiltersImplToJson(
      this,
    );
  }
}

abstract class _BookingFilters implements BookingFilters {
  factory _BookingFilters({required final String userIdStatus}) =
      _$BookingFiltersImpl;

  factory _BookingFilters.fromJson(Map<String, dynamic> json) =
      _$BookingFiltersImpl.fromJson;

  @override
  String get userIdStatus;

  /// Create a copy of BookingFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingFiltersImplCopyWith<_$BookingFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
