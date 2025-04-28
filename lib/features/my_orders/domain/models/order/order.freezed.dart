// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  User get customer => throw _privateConstructorUsedError;
  OrderType get type => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  List<OrderStatusHistoryItem> get statusHistory =>
      throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get dateCreated => throw _privateConstructorUsedError;
  double get totalCost => throw _privateConstructorUsedError;
  bool get costFrom => throw _privateConstructorUsedError;
  List<OrderService> get services => throw _privateConstructorUsedError;
  Rating? get rating => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String id,
      User customer,
      OrderType type,
      OrderStatus status,
      List<OrderStatusHistoryItem> statusHistory,
      @DateTimeConverter() DateTime dateCreated,
      double totalCost,
      bool costFrom,
      List<OrderService> services,
      Rating? rating});

  $UserCopyWith<$Res> get customer;
  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? type = null,
    Object? status = null,
    Object? statusHistory = null,
    Object? dateCreated = null,
    Object? totalCost = null,
    Object? costFrom = null,
    Object? services = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      statusHistory: null == statusHistory
          ? _value.statusHistory
          : statusHistory // ignore: cast_nullable_to_non_nullable
              as List<OrderStatusHistoryItem>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      costFrom: null == costFrom
          ? _value.costFrom
          : costFrom // ignore: cast_nullable_to_non_nullable
              as bool,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<OrderService>,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
    ) as $Val);
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get customer {
    return $UserCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of Order
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
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      User customer,
      OrderType type,
      OrderStatus status,
      List<OrderStatusHistoryItem> statusHistory,
      @DateTimeConverter() DateTime dateCreated,
      double totalCost,
      bool costFrom,
      List<OrderService> services,
      Rating? rating});

  @override
  $UserCopyWith<$Res> get customer;
  @override
  $RatingCopyWith<$Res>? get rating;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? type = null,
    Object? status = null,
    Object? statusHistory = null,
    Object? dateCreated = null,
    Object? totalCost = null,
    Object? costFrom = null,
    Object? services = null,
    Object? rating = freezed,
  }) {
    return _then(_$OrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as User,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      statusHistory: null == statusHistory
          ? _value._statusHistory
          : statusHistory // ignore: cast_nullable_to_non_nullable
              as List<OrderStatusHistoryItem>,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      costFrom: null == costFrom
          ? _value.costFrom
          : costFrom // ignore: cast_nullable_to_non_nullable
              as bool,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<OrderService>,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl extends _Order {
  _$OrderImpl(
      {required this.id,
      required this.customer,
      required this.type,
      required this.status,
      required final List<OrderStatusHistoryItem> statusHistory,
      @DateTimeConverter() required this.dateCreated,
      required this.totalCost,
      required this.costFrom,
      required final List<OrderService> services,
      this.rating})
      : _statusHistory = statusHistory,
        _services = services,
        super._();

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final String id;
  @override
  final User customer;
  @override
  final OrderType type;
  @override
  final OrderStatus status;
  final List<OrderStatusHistoryItem> _statusHistory;
  @override
  List<OrderStatusHistoryItem> get statusHistory {
    if (_statusHistory is EqualUnmodifiableListView) return _statusHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusHistory);
  }

  @override
  @DateTimeConverter()
  final DateTime dateCreated;
  @override
  final double totalCost;
  @override
  final bool costFrom;
  final List<OrderService> _services;
  @override
  List<OrderService> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  final Rating? rating;

  @override
  String toString() {
    return 'Order(id: $id, customer: $customer, type: $type, status: $status, statusHistory: $statusHistory, dateCreated: $dateCreated, totalCost: $totalCost, costFrom: $costFrom, services: $services, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._statusHistory, _statusHistory) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.costFrom, costFrom) ||
                other.costFrom == costFrom) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customer,
      type,
      status,
      const DeepCollectionEquality().hash(_statusHistory),
      dateCreated,
      totalCost,
      costFrom,
      const DeepCollectionEquality().hash(_services),
      rating);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order extends Order {
  factory _Order(
      {required final String id,
      required final User customer,
      required final OrderType type,
      required final OrderStatus status,
      required final List<OrderStatusHistoryItem> statusHistory,
      @DateTimeConverter() required final DateTime dateCreated,
      required final double totalCost,
      required final bool costFrom,
      required final List<OrderService> services,
      final Rating? rating}) = _$OrderImpl;
  _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get id;
  @override
  User get customer;
  @override
  OrderType get type;
  @override
  OrderStatus get status;
  @override
  List<OrderStatusHistoryItem> get statusHistory;
  @override
  @DateTimeConverter()
  DateTime get dateCreated;
  @override
  double get totalCost;
  @override
  bool get costFrom;
  @override
  List<OrderService> get services;
  @override
  Rating? get rating;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
