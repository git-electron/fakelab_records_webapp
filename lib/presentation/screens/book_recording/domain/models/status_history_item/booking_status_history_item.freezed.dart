// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_status_history_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingStatusHistoryItem _$BookingStatusHistoryItemFromJson(
    Map<String, dynamic> json) {
  return _BookingStatusHistoryItem.fromJson(json);
}

/// @nodoc
mixin _$BookingStatusHistoryItem {
  BookingStatus get status => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get dateChanged => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this BookingStatusHistoryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingStatusHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingStatusHistoryItemCopyWith<BookingStatusHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStatusHistoryItemCopyWith<$Res> {
  factory $BookingStatusHistoryItemCopyWith(BookingStatusHistoryItem value,
          $Res Function(BookingStatusHistoryItem) then) =
      _$BookingStatusHistoryItemCopyWithImpl<$Res, BookingStatusHistoryItem>;
  @useResult
  $Res call(
      {BookingStatus status,
      @DateTimeConverter() DateTime dateChanged,
      String? message});
}

/// @nodoc
class _$BookingStatusHistoryItemCopyWithImpl<$Res,
        $Val extends BookingStatusHistoryItem>
    implements $BookingStatusHistoryItemCopyWith<$Res> {
  _$BookingStatusHistoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingStatusHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dateChanged = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      dateChanged: null == dateChanged
          ? _value.dateChanged
          : dateChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingStatusHistoryItemImplCopyWith<$Res>
    implements $BookingStatusHistoryItemCopyWith<$Res> {
  factory _$$BookingStatusHistoryItemImplCopyWith(
          _$BookingStatusHistoryItemImpl value,
          $Res Function(_$BookingStatusHistoryItemImpl) then) =
      __$$BookingStatusHistoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookingStatus status,
      @DateTimeConverter() DateTime dateChanged,
      String? message});
}

/// @nodoc
class __$$BookingStatusHistoryItemImplCopyWithImpl<$Res>
    extends _$BookingStatusHistoryItemCopyWithImpl<$Res,
        _$BookingStatusHistoryItemImpl>
    implements _$$BookingStatusHistoryItemImplCopyWith<$Res> {
  __$$BookingStatusHistoryItemImplCopyWithImpl(
      _$BookingStatusHistoryItemImpl _value,
      $Res Function(_$BookingStatusHistoryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingStatusHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dateChanged = null,
    Object? message = freezed,
  }) {
    return _then(_$BookingStatusHistoryItemImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      dateChanged: null == dateChanged
          ? _value.dateChanged
          : dateChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingStatusHistoryItemImpl implements _BookingStatusHistoryItem {
  _$BookingStatusHistoryItemImpl(
      {required this.status,
      @DateTimeConverter() required this.dateChanged,
      this.message});

  factory _$BookingStatusHistoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingStatusHistoryItemImplFromJson(json);

  @override
  final BookingStatus status;
  @override
  @DateTimeConverter()
  final DateTime dateChanged;
  @override
  final String? message;

  @override
  String toString() {
    return 'BookingStatusHistoryItem(status: $status, dateChanged: $dateChanged, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStatusHistoryItemImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateChanged, dateChanged) ||
                other.dateChanged == dateChanged) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, dateChanged, message);

  /// Create a copy of BookingStatusHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingStatusHistoryItemImplCopyWith<_$BookingStatusHistoryItemImpl>
      get copyWith => __$$BookingStatusHistoryItemImplCopyWithImpl<
          _$BookingStatusHistoryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingStatusHistoryItemImplToJson(
      this,
    );
  }
}

abstract class _BookingStatusHistoryItem implements BookingStatusHistoryItem {
  factory _BookingStatusHistoryItem(
      {required final BookingStatus status,
      @DateTimeConverter() required final DateTime dateChanged,
      final String? message}) = _$BookingStatusHistoryItemImpl;

  factory _BookingStatusHistoryItem.fromJson(Map<String, dynamic> json) =
      _$BookingStatusHistoryItemImpl.fromJson;

  @override
  BookingStatus get status;
  @override
  @DateTimeConverter()
  DateTime get dateChanged;
  @override
  String? get message;

  /// Create a copy of BookingStatusHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingStatusHistoryItemImplCopyWith<_$BookingStatusHistoryItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
