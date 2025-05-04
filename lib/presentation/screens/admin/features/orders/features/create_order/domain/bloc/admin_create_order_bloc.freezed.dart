// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_create_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminCreateOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? customer) customerSelected,
    required TResult Function(OrderType? type) orderTypeSelected,
    required TResult Function() createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? customer)? customerSelected,
    TResult? Function(OrderType? type)? orderTypeSelected,
    TResult? Function()? createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? customer)? customerSelected,
    TResult Function(OrderType? type)? orderTypeSelected,
    TResult Function()? createButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomerSelected value) customerSelected,
    required TResult Function(_OrderTypeSelected value) orderTypeSelected,
    required TResult Function(_CreateButtonPressed value) createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomerSelected value)? customerSelected,
    TResult? Function(_OrderTypeSelected value)? orderTypeSelected,
    TResult? Function(_CreateButtonPressed value)? createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomerSelected value)? customerSelected,
    TResult Function(_OrderTypeSelected value)? orderTypeSelected,
    TResult Function(_CreateButtonPressed value)? createButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreateOrderEventCopyWith<$Res> {
  factory $AdminCreateOrderEventCopyWith(AdminCreateOrderEvent value,
          $Res Function(AdminCreateOrderEvent) then) =
      _$AdminCreateOrderEventCopyWithImpl<$Res, AdminCreateOrderEvent>;
}

/// @nodoc
class _$AdminCreateOrderEventCopyWithImpl<$Res,
        $Val extends AdminCreateOrderEvent>
    implements $AdminCreateOrderEventCopyWith<$Res> {
  _$AdminCreateOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CustomerSelectedImplCopyWith<$Res> {
  factory _$$CustomerSelectedImplCopyWith(_$CustomerSelectedImpl value,
          $Res Function(_$CustomerSelectedImpl) then) =
      __$$CustomerSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? customer});

  $UserCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$CustomerSelectedImplCopyWithImpl<$Res>
    extends _$AdminCreateOrderEventCopyWithImpl<$Res, _$CustomerSelectedImpl>
    implements _$$CustomerSelectedImplCopyWith<$Res> {
  __$$CustomerSelectedImplCopyWithImpl(_$CustomerSelectedImpl _value,
      $Res Function(_$CustomerSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = freezed,
  }) {
    return _then(_$CustomerSelectedImpl(
      freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of AdminCreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$CustomerSelectedImpl implements _CustomerSelected {
  const _$CustomerSelectedImpl(this.customer);

  @override
  final User? customer;

  @override
  String toString() {
    return 'AdminCreateOrderEvent.customerSelected(customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerSelectedImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  /// Create a copy of AdminCreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerSelectedImplCopyWith<_$CustomerSelectedImpl> get copyWith =>
      __$$CustomerSelectedImplCopyWithImpl<_$CustomerSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? customer) customerSelected,
    required TResult Function(OrderType? type) orderTypeSelected,
    required TResult Function() createButtonPressed,
  }) {
    return customerSelected(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? customer)? customerSelected,
    TResult? Function(OrderType? type)? orderTypeSelected,
    TResult? Function()? createButtonPressed,
  }) {
    return customerSelected?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? customer)? customerSelected,
    TResult Function(OrderType? type)? orderTypeSelected,
    TResult Function()? createButtonPressed,
    required TResult orElse(),
  }) {
    if (customerSelected != null) {
      return customerSelected(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomerSelected value) customerSelected,
    required TResult Function(_OrderTypeSelected value) orderTypeSelected,
    required TResult Function(_CreateButtonPressed value) createButtonPressed,
  }) {
    return customerSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomerSelected value)? customerSelected,
    TResult? Function(_OrderTypeSelected value)? orderTypeSelected,
    TResult? Function(_CreateButtonPressed value)? createButtonPressed,
  }) {
    return customerSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomerSelected value)? customerSelected,
    TResult Function(_OrderTypeSelected value)? orderTypeSelected,
    TResult Function(_CreateButtonPressed value)? createButtonPressed,
    required TResult orElse(),
  }) {
    if (customerSelected != null) {
      return customerSelected(this);
    }
    return orElse();
  }
}

abstract class _CustomerSelected implements AdminCreateOrderEvent {
  const factory _CustomerSelected(final User? customer) =
      _$CustomerSelectedImpl;

  User? get customer;

  /// Create a copy of AdminCreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerSelectedImplCopyWith<_$CustomerSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderTypeSelectedImplCopyWith<$Res> {
  factory _$$OrderTypeSelectedImplCopyWith(_$OrderTypeSelectedImpl value,
          $Res Function(_$OrderTypeSelectedImpl) then) =
      __$$OrderTypeSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderType? type});
}

/// @nodoc
class __$$OrderTypeSelectedImplCopyWithImpl<$Res>
    extends _$AdminCreateOrderEventCopyWithImpl<$Res, _$OrderTypeSelectedImpl>
    implements _$$OrderTypeSelectedImplCopyWith<$Res> {
  __$$OrderTypeSelectedImplCopyWithImpl(_$OrderTypeSelectedImpl _value,
      $Res Function(_$OrderTypeSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$OrderTypeSelectedImpl(
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
    ));
  }
}

/// @nodoc

class _$OrderTypeSelectedImpl implements _OrderTypeSelected {
  const _$OrderTypeSelectedImpl(this.type);

  @override
  final OrderType? type;

  @override
  String toString() {
    return 'AdminCreateOrderEvent.orderTypeSelected(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTypeSelectedImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AdminCreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTypeSelectedImplCopyWith<_$OrderTypeSelectedImpl> get copyWith =>
      __$$OrderTypeSelectedImplCopyWithImpl<_$OrderTypeSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? customer) customerSelected,
    required TResult Function(OrderType? type) orderTypeSelected,
    required TResult Function() createButtonPressed,
  }) {
    return orderTypeSelected(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? customer)? customerSelected,
    TResult? Function(OrderType? type)? orderTypeSelected,
    TResult? Function()? createButtonPressed,
  }) {
    return orderTypeSelected?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? customer)? customerSelected,
    TResult Function(OrderType? type)? orderTypeSelected,
    TResult Function()? createButtonPressed,
    required TResult orElse(),
  }) {
    if (orderTypeSelected != null) {
      return orderTypeSelected(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomerSelected value) customerSelected,
    required TResult Function(_OrderTypeSelected value) orderTypeSelected,
    required TResult Function(_CreateButtonPressed value) createButtonPressed,
  }) {
    return orderTypeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomerSelected value)? customerSelected,
    TResult? Function(_OrderTypeSelected value)? orderTypeSelected,
    TResult? Function(_CreateButtonPressed value)? createButtonPressed,
  }) {
    return orderTypeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomerSelected value)? customerSelected,
    TResult Function(_OrderTypeSelected value)? orderTypeSelected,
    TResult Function(_CreateButtonPressed value)? createButtonPressed,
    required TResult orElse(),
  }) {
    if (orderTypeSelected != null) {
      return orderTypeSelected(this);
    }
    return orElse();
  }
}

abstract class _OrderTypeSelected implements AdminCreateOrderEvent {
  const factory _OrderTypeSelected(final OrderType? type) =
      _$OrderTypeSelectedImpl;

  OrderType? get type;

  /// Create a copy of AdminCreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderTypeSelectedImplCopyWith<_$OrderTypeSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateButtonPressedImplCopyWith<$Res> {
  factory _$$CreateButtonPressedImplCopyWith(_$CreateButtonPressedImpl value,
          $Res Function(_$CreateButtonPressedImpl) then) =
      __$$CreateButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateButtonPressedImplCopyWithImpl<$Res>
    extends _$AdminCreateOrderEventCopyWithImpl<$Res, _$CreateButtonPressedImpl>
    implements _$$CreateButtonPressedImplCopyWith<$Res> {
  __$$CreateButtonPressedImplCopyWithImpl(_$CreateButtonPressedImpl _value,
      $Res Function(_$CreateButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateButtonPressedImpl implements _CreateButtonPressed {
  const _$CreateButtonPressedImpl();

  @override
  String toString() {
    return 'AdminCreateOrderEvent.createButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? customer) customerSelected,
    required TResult Function(OrderType? type) orderTypeSelected,
    required TResult Function() createButtonPressed,
  }) {
    return createButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? customer)? customerSelected,
    TResult? Function(OrderType? type)? orderTypeSelected,
    TResult? Function()? createButtonPressed,
  }) {
    return createButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? customer)? customerSelected,
    TResult Function(OrderType? type)? orderTypeSelected,
    TResult Function()? createButtonPressed,
    required TResult orElse(),
  }) {
    if (createButtonPressed != null) {
      return createButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomerSelected value) customerSelected,
    required TResult Function(_OrderTypeSelected value) orderTypeSelected,
    required TResult Function(_CreateButtonPressed value) createButtonPressed,
  }) {
    return createButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomerSelected value)? customerSelected,
    TResult? Function(_OrderTypeSelected value)? orderTypeSelected,
    TResult? Function(_CreateButtonPressed value)? createButtonPressed,
  }) {
    return createButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomerSelected value)? customerSelected,
    TResult Function(_OrderTypeSelected value)? orderTypeSelected,
    TResult Function(_CreateButtonPressed value)? createButtonPressed,
    required TResult orElse(),
  }) {
    if (createButtonPressed != null) {
      return createButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _CreateButtonPressed implements AdminCreateOrderEvent {
  const factory _CreateButtonPressed() = _$CreateButtonPressedImpl;
}

/// @nodoc
mixin _$AdminCreateOrderState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  User? get customer => throw _privateConstructorUsedError;
  OrderType? get orderType => throw _privateConstructorUsedError;

  /// Create a copy of AdminCreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCreateOrderStateCopyWith<AdminCreateOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreateOrderStateCopyWith<$Res> {
  factory $AdminCreateOrderStateCopyWith(AdminCreateOrderState value,
          $Res Function(AdminCreateOrderState) then) =
      _$AdminCreateOrderStateCopyWithImpl<$Res, AdminCreateOrderState>;
  @useResult
  $Res call({dynamic isLoading, User? customer, OrderType? orderType});

  $UserCopyWith<$Res>? get customer;
}

/// @nodoc
class _$AdminCreateOrderStateCopyWithImpl<$Res,
        $Val extends AdminCreateOrderState>
    implements $AdminCreateOrderStateCopyWith<$Res> {
  _$AdminCreateOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? customer = freezed,
    Object? orderType = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as User?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType?,
    ) as $Val);
  }

  /// Create a copy of AdminCreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminCreateOrderStateImplCopyWith<$Res>
    implements $AdminCreateOrderStateCopyWith<$Res> {
  factory _$$AdminCreateOrderStateImplCopyWith(
          _$AdminCreateOrderStateImpl value,
          $Res Function(_$AdminCreateOrderStateImpl) then) =
      __$$AdminCreateOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic isLoading, User? customer, OrderType? orderType});

  @override
  $UserCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$AdminCreateOrderStateImplCopyWithImpl<$Res>
    extends _$AdminCreateOrderStateCopyWithImpl<$Res,
        _$AdminCreateOrderStateImpl>
    implements _$$AdminCreateOrderStateImplCopyWith<$Res> {
  __$$AdminCreateOrderStateImplCopyWithImpl(_$AdminCreateOrderStateImpl _value,
      $Res Function(_$AdminCreateOrderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? customer = freezed,
    Object? orderType = freezed,
  }) {
    return _then(_$AdminCreateOrderStateImpl(
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as User?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType?,
    ));
  }
}

/// @nodoc

class _$AdminCreateOrderStateImpl extends _AdminCreateOrderState {
  const _$AdminCreateOrderStateImpl(
      {this.isLoading = false, this.customer, this.orderType})
      : super._();

  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  final User? customer;
  @override
  final OrderType? orderType;

  @override
  String toString() {
    return 'AdminCreateOrderState(isLoading: $isLoading, customer: $customer, orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCreateOrderStateImpl &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(isLoading), customer, orderType);

  /// Create a copy of AdminCreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCreateOrderStateImplCopyWith<_$AdminCreateOrderStateImpl>
      get copyWith => __$$AdminCreateOrderStateImplCopyWithImpl<
          _$AdminCreateOrderStateImpl>(this, _$identity);
}

abstract class _AdminCreateOrderState extends AdminCreateOrderState {
  const factory _AdminCreateOrderState(
      {final dynamic isLoading,
      final User? customer,
      final OrderType? orderType}) = _$AdminCreateOrderStateImpl;
  const _AdminCreateOrderState._() : super._();

  @override
  dynamic get isLoading;
  @override
  User? get customer;
  @override
  OrderType? get orderType;

  /// Create a copy of AdminCreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminCreateOrderStateImplCopyWith<_$AdminCreateOrderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
