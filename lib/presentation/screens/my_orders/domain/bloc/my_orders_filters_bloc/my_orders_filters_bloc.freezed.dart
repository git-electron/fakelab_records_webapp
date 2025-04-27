// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_orders_filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyOrdersFiltersEvent {
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
abstract class $MyOrdersFiltersEventCopyWith<$Res> {
  factory $MyOrdersFiltersEventCopyWith(MyOrdersFiltersEvent value,
          $Res Function(MyOrdersFiltersEvent) then) =
      _$MyOrdersFiltersEventCopyWithImpl<$Res, MyOrdersFiltersEvent>;
}

/// @nodoc
class _$MyOrdersFiltersEventCopyWithImpl<$Res,
        $Val extends MyOrdersFiltersEvent>
    implements $MyOrdersFiltersEventCopyWith<$Res> {
  _$MyOrdersFiltersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersFiltersEvent
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
    extends _$MyOrdersFiltersEventCopyWithImpl<$Res, _$TypeFilterChangedImpl>
    implements _$$TypeFilterChangedImplCopyWith<$Res> {
  __$$TypeFilterChangedImplCopyWithImpl(_$TypeFilterChangedImpl _value,
      $Res Function(_$TypeFilterChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersFiltersEvent
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
    return 'MyOrdersFiltersEvent.typeFilterChanged(type: $type)';
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

  /// Create a copy of MyOrdersFiltersEvent
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

abstract class _TypeFilterChanged implements MyOrdersFiltersEvent {
  const factory _TypeFilterChanged(final OrderType? type) =
      _$TypeFilterChangedImpl;

  OrderType? get type;

  /// Create a copy of MyOrdersFiltersEvent
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
    extends _$MyOrdersFiltersEventCopyWithImpl<$Res, _$StatusFilterChangedImpl>
    implements _$$StatusFilterChangedImplCopyWith<$Res> {
  __$$StatusFilterChangedImplCopyWithImpl(_$StatusFilterChangedImpl _value,
      $Res Function(_$StatusFilterChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersFiltersEvent
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
    return 'MyOrdersFiltersEvent.statusFilterChanged(status: $status)';
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

  /// Create a copy of MyOrdersFiltersEvent
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

abstract class _StatusFilterChanged implements MyOrdersFiltersEvent {
  const factory _StatusFilterChanged(final OrderStatus? status) =
      _$StatusFilterChangedImpl;

  OrderStatus? get status;

  /// Create a copy of MyOrdersFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusFilterChangedImplCopyWith<_$StatusFilterChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyOrdersFiltersState {
  OrderType? get type => throw _privateConstructorUsedError;
  OrderStatus? get status => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersFiltersStateCopyWith<MyOrdersFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersFiltersStateCopyWith<$Res> {
  factory $MyOrdersFiltersStateCopyWith(MyOrdersFiltersState value,
          $Res Function(MyOrdersFiltersState) then) =
      _$MyOrdersFiltersStateCopyWithImpl<$Res, MyOrdersFiltersState>;
  @useResult
  $Res call({OrderType? type, OrderStatus? status});
}

/// @nodoc
class _$MyOrdersFiltersStateCopyWithImpl<$Res,
        $Val extends MyOrdersFiltersState>
    implements $MyOrdersFiltersStateCopyWith<$Res> {
  _$MyOrdersFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersFiltersState
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
abstract class _$$MyOrdersFiltersStateImplCopyWith<$Res>
    implements $MyOrdersFiltersStateCopyWith<$Res> {
  factory _$$MyOrdersFiltersStateImplCopyWith(_$MyOrdersFiltersStateImpl value,
          $Res Function(_$MyOrdersFiltersStateImpl) then) =
      __$$MyOrdersFiltersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType? type, OrderStatus? status});
}

/// @nodoc
class __$$MyOrdersFiltersStateImplCopyWithImpl<$Res>
    extends _$MyOrdersFiltersStateCopyWithImpl<$Res, _$MyOrdersFiltersStateImpl>
    implements _$$MyOrdersFiltersStateImplCopyWith<$Res> {
  __$$MyOrdersFiltersStateImplCopyWithImpl(_$MyOrdersFiltersStateImpl _value,
      $Res Function(_$MyOrdersFiltersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_$MyOrdersFiltersStateImpl(
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

class _$MyOrdersFiltersStateImpl implements _MyOrdersFiltersState {
  const _$MyOrdersFiltersStateImpl({this.type, this.status});

  @override
  final OrderType? type;
  @override
  final OrderStatus? status;

  @override
  String toString() {
    return 'MyOrdersFiltersState(type: $type, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersFiltersStateImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, status);

  /// Create a copy of MyOrdersFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersFiltersStateImplCopyWith<_$MyOrdersFiltersStateImpl>
      get copyWith =>
          __$$MyOrdersFiltersStateImplCopyWithImpl<_$MyOrdersFiltersStateImpl>(
              this, _$identity);
}

abstract class _MyOrdersFiltersState implements MyOrdersFiltersState {
  const factory _MyOrdersFiltersState(
      {final OrderType? type,
      final OrderStatus? status}) = _$MyOrdersFiltersStateImpl;

  @override
  OrderType? get type;
  @override
  OrderStatus? get status;

  /// Create a copy of MyOrdersFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersFiltersStateImplCopyWith<_$MyOrdersFiltersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
