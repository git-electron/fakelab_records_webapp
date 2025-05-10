// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  String get id => throw _privateConstructorUsedError;
  User get customer => throw _privateConstructorUsedError;
  BookingStatus get status => throw _privateConstructorUsedError;
  List<BookingStatusHistoryItem> get statusHistory =>
      throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get dateCreated => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get dateChanged => throw _privateConstructorUsedError;
  double get totalCost => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  StaffMember? get assignee => throw _privateConstructorUsedError;
  Rating? get rating => throw _privateConstructorUsedError;

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call(
      {String id,
      User customer,
      BookingStatus status,
      List<BookingStatusHistoryItem> statusHistory,
      @DateTimeConverter() DateTime dateCreated,
      @DateTimeConverter() DateTime dateChanged,
      double totalCost,
      DateTime startTime,
      DateTime endTime,
      StaffMember? assignee,
      Rating? rating});

  $UserCopyWith<$Res> get customer;
  $StaffMemberCopyWith<$Res>? get assignee;
  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? status = null,
    Object? statusHistory = null,
    Object? dateCreated = null,
    Object? dateChanged = null,
    Object? totalCost = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? assignee = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      statusHistory: null == statusHistory
          ? _value.statusHistory
          : statusHistory // ignore: cast_nullable_to_non_nullable
              as List<BookingStatusHistoryItem>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateChanged: null == dateChanged
          ? _value.dateChanged
          : dateChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assignee: freezed == assignee
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as StaffMember?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
    ) as $Val);
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get customer {
    return $UserCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffMemberCopyWith<$Res>? get assignee {
    if (_value.assignee == null) {
      return null;
    }

    return $StaffMemberCopyWith<$Res>(_value.assignee!, (value) {
      return _then(_value.copyWith(assignee: value) as $Val);
    });
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      User customer,
      BookingStatus status,
      List<BookingStatusHistoryItem> statusHistory,
      @DateTimeConverter() DateTime dateCreated,
      @DateTimeConverter() DateTime dateChanged,
      double totalCost,
      DateTime startTime,
      DateTime endTime,
      StaffMember? assignee,
      Rating? rating});

  @override
  $UserCopyWith<$Res> get customer;
  @override
  $StaffMemberCopyWith<$Res>? get assignee;
  @override
  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? status = null,
    Object? statusHistory = null,
    Object? dateCreated = null,
    Object? dateChanged = null,
    Object? totalCost = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? assignee = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$BookingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      statusHistory: null == statusHistory
          ? _value._statusHistory
          : statusHistory // ignore: cast_nullable_to_non_nullable
              as List<BookingStatusHistoryItem>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateChanged: null == dateChanged
          ? _value.dateChanged
          : dateChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assignee: freezed == assignee
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as StaffMember?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  _$BookingImpl(
      {required this.id,
      required this.customer,
      required this.status,
      required final List<BookingStatusHistoryItem> statusHistory,
      @DateTimeConverter() required this.dateCreated,
      @DateTimeConverter() required this.dateChanged,
      required this.totalCost,
      required this.startTime,
      required this.endTime,
      this.assignee,
      this.rating})
      : _statusHistory = statusHistory;

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  final String id;
  @override
  final User customer;
  @override
  final BookingStatus status;
  final List<BookingStatusHistoryItem> _statusHistory;
  @override
  List<BookingStatusHistoryItem> get statusHistory {
    if (_statusHistory is EqualUnmodifiableListView) return _statusHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusHistory);
  }

  @override
  @DateTimeConverter()
  final DateTime dateCreated;
  @override
  @DateTimeConverter()
  final DateTime dateChanged;
  @override
  final double totalCost;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final StaffMember? assignee;
  @override
  final Rating? rating;

  @override
  String toString() {
    return 'Booking(id: $id, customer: $customer, status: $status, statusHistory: $statusHistory, dateCreated: $dateCreated, dateChanged: $dateChanged, totalCost: $totalCost, startTime: $startTime, endTime: $endTime, assignee: $assignee, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._statusHistory, _statusHistory) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateChanged, dateChanged) ||
                other.dateChanged == dateChanged) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.assignee, assignee) ||
                other.assignee == assignee) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customer,
      status,
      const DeepCollectionEquality().hash(_statusHistory),
      dateCreated,
      dateChanged,
      totalCost,
      startTime,
      endTime,
      assignee,
      rating);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(
      this,
    );
  }
}

abstract class _Booking implements Booking {
  factory _Booking(
      {required final String id,
      required final User customer,
      required final BookingStatus status,
      required final List<BookingStatusHistoryItem> statusHistory,
      @DateTimeConverter() required final DateTime dateCreated,
      @DateTimeConverter() required final DateTime dateChanged,
      required final double totalCost,
      required final DateTime startTime,
      required final DateTime endTime,
      final StaffMember? assignee,
      final Rating? rating}) = _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  String get id;
  @override
  User get customer;
  @override
  BookingStatus get status;
  @override
  List<BookingStatusHistoryItem> get statusHistory;
  @override
  @DateTimeConverter()
  DateTime get dateCreated;
  @override
  @DateTimeConverter()
  DateTime get dateChanged;
  @override
  double get totalCost;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  StaffMember? get assignee;
  @override
  Rating? get rating;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
