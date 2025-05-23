// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setLoading,
    required TResult Function(Order order) setLoaded,
    required TResult Function(String? message) setError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setLoading,
    TResult? Function(Order order)? setLoaded,
    TResult? Function(String? message)? setError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setLoading,
    TResult Function(Order order)? setLoaded,
    TResult Function(String? message)? setError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_SetLoaded value) setLoaded,
    required TResult Function(_SetError value) setError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_SetLoaded value)? setLoaded,
    TResult? Function(_SetError value)? setError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_SetLoaded value)? setLoaded,
    TResult Function(_SetError value)? setError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrderEventCopyWith<$Res> {
  factory $MyOrderEventCopyWith(
          MyOrderEvent value, $Res Function(MyOrderEvent) then) =
      _$MyOrderEventCopyWithImpl<$Res, MyOrderEvent>;
}

/// @nodoc
class _$MyOrderEventCopyWithImpl<$Res, $Val extends MyOrderEvent>
    implements $MyOrderEventCopyWith<$Res> {
  _$MyOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetLoadingImplCopyWith<$Res> {
  factory _$$SetLoadingImplCopyWith(
          _$SetLoadingImpl value, $Res Function(_$SetLoadingImpl) then) =
      __$$SetLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetLoadingImplCopyWithImpl<$Res>
    extends _$MyOrderEventCopyWithImpl<$Res, _$SetLoadingImpl>
    implements _$$SetLoadingImplCopyWith<$Res> {
  __$$SetLoadingImplCopyWithImpl(
      _$SetLoadingImpl _value, $Res Function(_$SetLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetLoadingImpl implements _SetLoading {
  const _$SetLoadingImpl();

  @override
  String toString() {
    return 'MyOrderEvent.setLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setLoading,
    required TResult Function(Order order) setLoaded,
    required TResult Function(String? message) setError,
  }) {
    return setLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setLoading,
    TResult? Function(Order order)? setLoaded,
    TResult? Function(String? message)? setError,
  }) {
    return setLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setLoading,
    TResult Function(Order order)? setLoaded,
    TResult Function(String? message)? setError,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_SetLoaded value) setLoaded,
    required TResult Function(_SetError value) setError,
  }) {
    return setLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_SetLoaded value)? setLoaded,
    TResult? Function(_SetError value)? setError,
  }) {
    return setLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_SetLoaded value)? setLoaded,
    TResult Function(_SetError value)? setError,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading(this);
    }
    return orElse();
  }
}

abstract class _SetLoading implements MyOrderEvent {
  const factory _SetLoading() = _$SetLoadingImpl;
}

/// @nodoc
abstract class _$$SetLoadedImplCopyWith<$Res> {
  factory _$$SetLoadedImplCopyWith(
          _$SetLoadedImpl value, $Res Function(_$SetLoadedImpl) then) =
      __$$SetLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$SetLoadedImplCopyWithImpl<$Res>
    extends _$MyOrderEventCopyWithImpl<$Res, _$SetLoadedImpl>
    implements _$$SetLoadedImplCopyWith<$Res> {
  __$$SetLoadedImplCopyWithImpl(
      _$SetLoadedImpl _value, $Res Function(_$SetLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$SetLoadedImpl(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  /// Create a copy of MyOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$SetLoadedImpl implements _SetLoaded {
  const _$SetLoadedImpl(this.order);

  @override
  final Order order;

  @override
  String toString() {
    return 'MyOrderEvent.setLoaded(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLoadedImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of MyOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLoadedImplCopyWith<_$SetLoadedImpl> get copyWith =>
      __$$SetLoadedImplCopyWithImpl<_$SetLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setLoading,
    required TResult Function(Order order) setLoaded,
    required TResult Function(String? message) setError,
  }) {
    return setLoaded(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setLoading,
    TResult? Function(Order order)? setLoaded,
    TResult? Function(String? message)? setError,
  }) {
    return setLoaded?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setLoading,
    TResult Function(Order order)? setLoaded,
    TResult Function(String? message)? setError,
    required TResult orElse(),
  }) {
    if (setLoaded != null) {
      return setLoaded(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_SetLoaded value) setLoaded,
    required TResult Function(_SetError value) setError,
  }) {
    return setLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_SetLoaded value)? setLoaded,
    TResult? Function(_SetError value)? setError,
  }) {
    return setLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_SetLoaded value)? setLoaded,
    TResult Function(_SetError value)? setError,
    required TResult orElse(),
  }) {
    if (setLoaded != null) {
      return setLoaded(this);
    }
    return orElse();
  }
}

abstract class _SetLoaded implements MyOrderEvent {
  const factory _SetLoaded(final Order order) = _$SetLoadedImpl;

  Order get order;

  /// Create a copy of MyOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLoadedImplCopyWith<_$SetLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetErrorImplCopyWith<$Res> {
  factory _$$SetErrorImplCopyWith(
          _$SetErrorImpl value, $Res Function(_$SetErrorImpl) then) =
      __$$SetErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SetErrorImplCopyWithImpl<$Res>
    extends _$MyOrderEventCopyWithImpl<$Res, _$SetErrorImpl>
    implements _$$SetErrorImplCopyWith<$Res> {
  __$$SetErrorImplCopyWithImpl(
      _$SetErrorImpl _value, $Res Function(_$SetErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SetErrorImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SetErrorImpl implements _SetError {
  const _$SetErrorImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'MyOrderEvent.setError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MyOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetErrorImplCopyWith<_$SetErrorImpl> get copyWith =>
      __$$SetErrorImplCopyWithImpl<_$SetErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setLoading,
    required TResult Function(Order order) setLoaded,
    required TResult Function(String? message) setError,
  }) {
    return setError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setLoading,
    TResult? Function(Order order)? setLoaded,
    TResult? Function(String? message)? setError,
  }) {
    return setError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setLoading,
    TResult Function(Order order)? setLoaded,
    TResult Function(String? message)? setError,
    required TResult orElse(),
  }) {
    if (setError != null) {
      return setError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_SetLoaded value) setLoaded,
    required TResult Function(_SetError value) setError,
  }) {
    return setError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_SetLoaded value)? setLoaded,
    TResult? Function(_SetError value)? setError,
  }) {
    return setError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_SetLoaded value)? setLoaded,
    TResult Function(_SetError value)? setError,
    required TResult orElse(),
  }) {
    if (setError != null) {
      return setError(this);
    }
    return orElse();
  }
}

abstract class _SetError implements MyOrderEvent {
  const factory _SetError(final String? message) = _$SetErrorImpl;

  String? get message;

  /// Create a copy of MyOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetErrorImplCopyWith<_$SetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Order order) loaded,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Order order)? loaded,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Order order)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrderStateCopyWith<$Res> {
  factory $MyOrderStateCopyWith(
          MyOrderState value, $Res Function(MyOrderState) then) =
      _$MyOrderStateCopyWithImpl<$Res, MyOrderState>;
}

/// @nodoc
class _$MyOrderStateCopyWithImpl<$Res, $Val extends MyOrderState>
    implements $MyOrderStateCopyWith<$Res> {
  _$MyOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MyOrderStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'MyOrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Order order) loaded,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Order order)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Order order)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends MyOrderState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$MyOrderStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$LoadedImpl(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  /// Create a copy of MyOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl extends _Loaded {
  const _$LoadedImpl(this.order) : super._();

  @override
  final Order order;

  @override
  String toString() {
    return 'MyOrderState.loaded(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of MyOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Order order) loaded,
    required TResult Function(String? message) error,
  }) {
    return loaded(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Order order)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loaded?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Order order)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends MyOrderState {
  const factory _Loaded(final Order order) = _$LoadedImpl;
  const _Loaded._() : super._();

  Order get order;

  /// Create a copy of MyOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$MyOrderStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'MyOrderState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MyOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Order order) loaded,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Order order)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Order order)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends MyOrderState {
  const factory _Error(final String? message) = _$ErrorImpl;
  const _Error._() : super._();

  String? get message;

  /// Create a copy of MyOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
