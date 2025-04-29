// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_orders_filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminOrdersFiltersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType? type) typeFilterChanged,
    required TResult Function(OrderStatus? status) statusFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType? type)? typeFilterChanged,
    TResult? Function(OrderStatus? status)? statusFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType? type)? typeFilterChanged,
    TResult Function(OrderStatus? status)? statusFilterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeFilterChanged value) typeFilterChanged,
    required TResult Function(_StatusFilterChanged value) statusFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeFilterChanged value)? typeFilterChanged,
    TResult? Function(_StatusFilterChanged value)? statusFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeFilterChanged value)? typeFilterChanged,
    TResult Function(_StatusFilterChanged value)? statusFilterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrdersFiltersEventCopyWith<$Res> {
  factory $AdminOrdersFiltersEventCopyWith(AdminOrdersFiltersEvent value,
          $Res Function(AdminOrdersFiltersEvent) then) =
      _$AdminOrdersFiltersEventCopyWithImpl<$Res, AdminOrdersFiltersEvent>;
}

/// @nodoc
class _$AdminOrdersFiltersEventCopyWithImpl<$Res,
        $Val extends AdminOrdersFiltersEvent>
    implements $AdminOrdersFiltersEventCopyWith<$Res> {
  _$AdminOrdersFiltersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrdersFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TypeFilterChangedImplCopyWith<$Res> {
  factory _$$TypeFilterChangedImplCopyWith(_$TypeFilterChangedImpl value,
          $Res Function(_$TypeFilterChangedImpl) then) =
      __$$TypeFilterChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderType? type});
}

/// @nodoc
class __$$TypeFilterChangedImplCopyWithImpl<$Res>
    extends _$AdminOrdersFiltersEventCopyWithImpl<$Res, _$TypeFilterChangedImpl>
    implements _$$TypeFilterChangedImplCopyWith<$Res> {
  __$$TypeFilterChangedImplCopyWithImpl(_$TypeFilterChangedImpl _value,
      $Res Function(_$TypeFilterChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrdersFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$TypeFilterChangedImpl(
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
    ));
  }
}

/// @nodoc

class _$TypeFilterChangedImpl implements _TypeFilterChanged {
  const _$TypeFilterChangedImpl(this.type);

  @override
  final OrderType? type;

  @override
  String toString() {
    return 'AdminOrdersFiltersEvent.typeFilterChanged(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeFilterChangedImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AdminOrdersFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeFilterChangedImplCopyWith<_$TypeFilterChangedImpl> get copyWith =>
      __$$TypeFilterChangedImplCopyWithImpl<_$TypeFilterChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType? type) typeFilterChanged,
    required TResult Function(OrderStatus? status) statusFilterChanged,
  }) {
    return typeFilterChanged(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType? type)? typeFilterChanged,
    TResult? Function(OrderStatus? status)? statusFilterChanged,
  }) {
    return typeFilterChanged?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType? type)? typeFilterChanged,
    TResult Function(OrderStatus? status)? statusFilterChanged,
    required TResult orElse(),
  }) {
    if (typeFilterChanged != null) {
      return typeFilterChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeFilterChanged value) typeFilterChanged,
    required TResult Function(_StatusFilterChanged value) statusFilterChanged,
  }) {
    return typeFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeFilterChanged value)? typeFilterChanged,
    TResult? Function(_StatusFilterChanged value)? statusFilterChanged,
  }) {
    return typeFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeFilterChanged value)? typeFilterChanged,
    TResult Function(_StatusFilterChanged value)? statusFilterChanged,
    required TResult orElse(),
  }) {
    if (typeFilterChanged != null) {
      return typeFilterChanged(this);
    }
    return orElse();
  }
}

abstract class _TypeFilterChanged implements AdminOrdersFiltersEvent {
  const factory _TypeFilterChanged(final OrderType? type) =
      _$TypeFilterChangedImpl;

  OrderType? get type;

  /// Create a copy of AdminOrdersFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeFilterChangedImplCopyWith<_$TypeFilterChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusFilterChangedImplCopyWith<$Res> {
  factory _$$StatusFilterChangedImplCopyWith(_$StatusFilterChangedImpl value,
          $Res Function(_$StatusFilterChangedImpl) then) =
      __$$StatusFilterChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderStatus? status});
}

/// @nodoc
class __$$StatusFilterChangedImplCopyWithImpl<$Res>
    extends _$AdminOrdersFiltersEventCopyWithImpl<$Res,
        _$StatusFilterChangedImpl>
    implements _$$StatusFilterChangedImplCopyWith<$Res> {
  __$$StatusFilterChangedImplCopyWithImpl(_$StatusFilterChangedImpl _value,
      $Res Function(_$StatusFilterChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrdersFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$StatusFilterChangedImpl(
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
    ));
  }
}

/// @nodoc

class _$StatusFilterChangedImpl implements _StatusFilterChanged {
  const _$StatusFilterChangedImpl(this.status);

  @override
  final OrderStatus? status;

  @override
  String toString() {
    return 'AdminOrdersFiltersEvent.statusFilterChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusFilterChangedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of AdminOrdersFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusFilterChangedImplCopyWith<_$StatusFilterChangedImpl> get copyWith =>
      __$$StatusFilterChangedImplCopyWithImpl<_$StatusFilterChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType? type) typeFilterChanged,
    required TResult Function(OrderStatus? status) statusFilterChanged,
  }) {
    return statusFilterChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType? type)? typeFilterChanged,
    TResult? Function(OrderStatus? status)? statusFilterChanged,
  }) {
    return statusFilterChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType? type)? typeFilterChanged,
    TResult Function(OrderStatus? status)? statusFilterChanged,
    required TResult orElse(),
  }) {
    if (statusFilterChanged != null) {
      return statusFilterChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeFilterChanged value) typeFilterChanged,
    required TResult Function(_StatusFilterChanged value) statusFilterChanged,
  }) {
    return statusFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeFilterChanged value)? typeFilterChanged,
    TResult? Function(_StatusFilterChanged value)? statusFilterChanged,
  }) {
    return statusFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeFilterChanged value)? typeFilterChanged,
    TResult Function(_StatusFilterChanged value)? statusFilterChanged,
    required TResult orElse(),
  }) {
    if (statusFilterChanged != null) {
      return statusFilterChanged(this);
    }
    return orElse();
  }
}

abstract class _StatusFilterChanged implements AdminOrdersFiltersEvent {
  const factory _StatusFilterChanged(final OrderStatus? status) =
      _$StatusFilterChangedImpl;

  OrderStatus? get status;

  /// Create a copy of AdminOrdersFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusFilterChangedImplCopyWith<_$StatusFilterChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminOrdersFiltersState {
  OrderType? get type => throw _privateConstructorUsedError;
  OrderStatus? get status => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrdersFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrdersFiltersStateCopyWith<AdminOrdersFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrdersFiltersStateCopyWith<$Res> {
  factory $AdminOrdersFiltersStateCopyWith(AdminOrdersFiltersState value,
          $Res Function(AdminOrdersFiltersState) then) =
      _$AdminOrdersFiltersStateCopyWithImpl<$Res, AdminOrdersFiltersState>;
  @useResult
  $Res call({OrderType? type, OrderStatus? status});
}

/// @nodoc
class _$AdminOrdersFiltersStateCopyWithImpl<$Res,
        $Val extends AdminOrdersFiltersState>
    implements $AdminOrdersFiltersStateCopyWith<$Res> {
  _$AdminOrdersFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrdersFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminOrdersFiltersStateImplCopyWith<$Res>
    implements $AdminOrdersFiltersStateCopyWith<$Res> {
  factory _$$AdminOrdersFiltersStateImplCopyWith(
          _$AdminOrdersFiltersStateImpl value,
          $Res Function(_$AdminOrdersFiltersStateImpl) then) =
      __$$AdminOrdersFiltersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType? type, OrderStatus? status});
}

/// @nodoc
class __$$AdminOrdersFiltersStateImplCopyWithImpl<$Res>
    extends _$AdminOrdersFiltersStateCopyWithImpl<$Res,
        _$AdminOrdersFiltersStateImpl>
    implements _$$AdminOrdersFiltersStateImplCopyWith<$Res> {
  __$$AdminOrdersFiltersStateImplCopyWithImpl(
      _$AdminOrdersFiltersStateImpl _value,
      $Res Function(_$AdminOrdersFiltersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrdersFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_$AdminOrdersFiltersStateImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
    ));
  }
}

/// @nodoc

class _$AdminOrdersFiltersStateImpl extends _AdminOrdersFiltersState {
  const _$AdminOrdersFiltersStateImpl({this.type, this.status}) : super._();

  @override
  final OrderType? type;
  @override
  final OrderStatus? status;

  @override
  String toString() {
    return 'AdminOrdersFiltersState(type: $type, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrdersFiltersStateImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, status);

  /// Create a copy of AdminOrdersFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrdersFiltersStateImplCopyWith<_$AdminOrdersFiltersStateImpl>
      get copyWith => __$$AdminOrdersFiltersStateImplCopyWithImpl<
          _$AdminOrdersFiltersStateImpl>(this, _$identity);
}

abstract class _AdminOrdersFiltersState extends AdminOrdersFiltersState {
  const factory _AdminOrdersFiltersState(
      {final OrderType? type,
      final OrderStatus? status}) = _$AdminOrdersFiltersStateImpl;
  const _AdminOrdersFiltersState._() : super._();

  @override
  OrderType? get type;
  @override
  OrderStatus? get status;

  /// Create a copy of AdminOrdersFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrdersFiltersStateImplCopyWith<_$AdminOrdersFiltersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
