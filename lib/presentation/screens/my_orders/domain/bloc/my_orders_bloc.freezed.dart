// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyOrdersEvent {
  Object get state => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserState state) userStateChanged,
    required TResult Function(MyOrdersFeatureState state)
        myOrdersFeatureStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserState state)? userStateChanged,
    TResult? Function(MyOrdersFeatureState state)? myOrdersFeatureStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserState state)? userStateChanged,
    TResult Function(MyOrdersFeatureState state)? myOrdersFeatureStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateChanged value) userStateChanged,
    required TResult Function(_MyOrdersFeatureStateChanged value)
        myOrdersFeatureStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateChanged value)? userStateChanged,
    TResult? Function(_MyOrdersFeatureStateChanged value)?
        myOrdersFeatureStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateChanged value)? userStateChanged,
    TResult Function(_MyOrdersFeatureStateChanged value)?
        myOrdersFeatureStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersEventCopyWith<$Res> {
  factory $MyOrdersEventCopyWith(
          MyOrdersEvent value, $Res Function(MyOrdersEvent) then) =
      _$MyOrdersEventCopyWithImpl<$Res, MyOrdersEvent>;
}

/// @nodoc
class _$MyOrdersEventCopyWithImpl<$Res, $Val extends MyOrdersEvent>
    implements $MyOrdersEventCopyWith<$Res> {
  _$MyOrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserStateChangedImplCopyWith<$Res> {
  factory _$$UserStateChangedImplCopyWith(_$UserStateChangedImpl value,
          $Res Function(_$UserStateChangedImpl) then) =
      __$$UserStateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserState state});

  $UserStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$UserStateChangedImplCopyWithImpl<$Res>
    extends _$MyOrdersEventCopyWithImpl<$Res, _$UserStateChangedImpl>
    implements _$$UserStateChangedImplCopyWith<$Res> {
  __$$UserStateChangedImplCopyWithImpl(_$UserStateChangedImpl _value,
      $Res Function(_$UserStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$UserStateChangedImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UserState,
    ));
  }

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStateCopyWith<$Res> get state {
    return $UserStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$UserStateChangedImpl implements _UserStateChanged {
  const _$UserStateChangedImpl(this.state);

  @override
  final UserState state;

  @override
  String toString() {
    return 'MyOrdersEvent.userStateChanged(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateChangedImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateChangedImplCopyWith<_$UserStateChangedImpl> get copyWith =>
      __$$UserStateChangedImplCopyWithImpl<_$UserStateChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserState state) userStateChanged,
    required TResult Function(MyOrdersFeatureState state)
        myOrdersFeatureStateChanged,
  }) {
    return userStateChanged(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserState state)? userStateChanged,
    TResult? Function(MyOrdersFeatureState state)? myOrdersFeatureStateChanged,
  }) {
    return userStateChanged?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserState state)? userStateChanged,
    TResult Function(MyOrdersFeatureState state)? myOrdersFeatureStateChanged,
    required TResult orElse(),
  }) {
    if (userStateChanged != null) {
      return userStateChanged(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateChanged value) userStateChanged,
    required TResult Function(_MyOrdersFeatureStateChanged value)
        myOrdersFeatureStateChanged,
  }) {
    return userStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateChanged value)? userStateChanged,
    TResult? Function(_MyOrdersFeatureStateChanged value)?
        myOrdersFeatureStateChanged,
  }) {
    return userStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateChanged value)? userStateChanged,
    TResult Function(_MyOrdersFeatureStateChanged value)?
        myOrdersFeatureStateChanged,
    required TResult orElse(),
  }) {
    if (userStateChanged != null) {
      return userStateChanged(this);
    }
    return orElse();
  }
}

abstract class _UserStateChanged implements MyOrdersEvent {
  const factory _UserStateChanged(final UserState state) =
      _$UserStateChangedImpl;

  @override
  UserState get state;

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateChangedImplCopyWith<_$UserStateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyOrdersFeatureStateChangedImplCopyWith<$Res> {
  factory _$$MyOrdersFeatureStateChangedImplCopyWith(
          _$MyOrdersFeatureStateChangedImpl value,
          $Res Function(_$MyOrdersFeatureStateChangedImpl) then) =
      __$$MyOrdersFeatureStateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyOrdersFeatureState state});

  $MyOrdersFeatureStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$MyOrdersFeatureStateChangedImplCopyWithImpl<$Res>
    extends _$MyOrdersEventCopyWithImpl<$Res, _$MyOrdersFeatureStateChangedImpl>
    implements _$$MyOrdersFeatureStateChangedImplCopyWith<$Res> {
  __$$MyOrdersFeatureStateChangedImplCopyWithImpl(
      _$MyOrdersFeatureStateChangedImpl _value,
      $Res Function(_$MyOrdersFeatureStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$MyOrdersFeatureStateChangedImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as MyOrdersFeatureState,
    ));
  }

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyOrdersFeatureStateCopyWith<$Res> get state {
    return $MyOrdersFeatureStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$MyOrdersFeatureStateChangedImpl
    implements _MyOrdersFeatureStateChanged {
  const _$MyOrdersFeatureStateChangedImpl(this.state);

  @override
  final MyOrdersFeatureState state;

  @override
  String toString() {
    return 'MyOrdersEvent.myOrdersFeatureStateChanged(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersFeatureStateChangedImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersFeatureStateChangedImplCopyWith<_$MyOrdersFeatureStateChangedImpl>
      get copyWith => __$$MyOrdersFeatureStateChangedImplCopyWithImpl<
          _$MyOrdersFeatureStateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserState state) userStateChanged,
    required TResult Function(MyOrdersFeatureState state)
        myOrdersFeatureStateChanged,
  }) {
    return myOrdersFeatureStateChanged(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserState state)? userStateChanged,
    TResult? Function(MyOrdersFeatureState state)? myOrdersFeatureStateChanged,
  }) {
    return myOrdersFeatureStateChanged?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserState state)? userStateChanged,
    TResult Function(MyOrdersFeatureState state)? myOrdersFeatureStateChanged,
    required TResult orElse(),
  }) {
    if (myOrdersFeatureStateChanged != null) {
      return myOrdersFeatureStateChanged(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateChanged value) userStateChanged,
    required TResult Function(_MyOrdersFeatureStateChanged value)
        myOrdersFeatureStateChanged,
  }) {
    return myOrdersFeatureStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateChanged value)? userStateChanged,
    TResult? Function(_MyOrdersFeatureStateChanged value)?
        myOrdersFeatureStateChanged,
  }) {
    return myOrdersFeatureStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateChanged value)? userStateChanged,
    TResult Function(_MyOrdersFeatureStateChanged value)?
        myOrdersFeatureStateChanged,
    required TResult orElse(),
  }) {
    if (myOrdersFeatureStateChanged != null) {
      return myOrdersFeatureStateChanged(this);
    }
    return orElse();
  }
}

abstract class _MyOrdersFeatureStateChanged implements MyOrdersEvent {
  const factory _MyOrdersFeatureStateChanged(final MyOrdersFeatureState state) =
      _$MyOrdersFeatureStateChangedImpl;

  @override
  MyOrdersFeatureState get state;

  /// Create a copy of MyOrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersFeatureStateChangedImplCopyWith<_$MyOrdersFeatureStateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyOrdersState {
  UserState get userState => throw _privateConstructorUsedError;
  MyOrdersFeatureState get myOrdersFeatureState =>
      throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersStateCopyWith<MyOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersStateCopyWith<$Res> {
  factory $MyOrdersStateCopyWith(
          MyOrdersState value, $Res Function(MyOrdersState) then) =
      _$MyOrdersStateCopyWithImpl<$Res, MyOrdersState>;
  @useResult
  $Res call({UserState userState, MyOrdersFeatureState myOrdersFeatureState});

  $UserStateCopyWith<$Res> get userState;
  $MyOrdersFeatureStateCopyWith<$Res> get myOrdersFeatureState;
}

/// @nodoc
class _$MyOrdersStateCopyWithImpl<$Res, $Val extends MyOrdersState>
    implements $MyOrdersStateCopyWith<$Res> {
  _$MyOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userState = null,
    Object? myOrdersFeatureState = null,
  }) {
    return _then(_value.copyWith(
      userState: null == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as UserState,
      myOrdersFeatureState: null == myOrdersFeatureState
          ? _value.myOrdersFeatureState
          : myOrdersFeatureState // ignore: cast_nullable_to_non_nullable
              as MyOrdersFeatureState,
    ) as $Val);
  }

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStateCopyWith<$Res> get userState {
    return $UserStateCopyWith<$Res>(_value.userState, (value) {
      return _then(_value.copyWith(userState: value) as $Val);
    });
  }

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyOrdersFeatureStateCopyWith<$Res> get myOrdersFeatureState {
    return $MyOrdersFeatureStateCopyWith<$Res>(_value.myOrdersFeatureState,
        (value) {
      return _then(_value.copyWith(myOrdersFeatureState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyOrdersStateImplCopyWith<$Res>
    implements $MyOrdersStateCopyWith<$Res> {
  factory _$$MyOrdersStateImplCopyWith(
          _$MyOrdersStateImpl value, $Res Function(_$MyOrdersStateImpl) then) =
      __$$MyOrdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserState userState, MyOrdersFeatureState myOrdersFeatureState});

  @override
  $UserStateCopyWith<$Res> get userState;
  @override
  $MyOrdersFeatureStateCopyWith<$Res> get myOrdersFeatureState;
}

/// @nodoc
class __$$MyOrdersStateImplCopyWithImpl<$Res>
    extends _$MyOrdersStateCopyWithImpl<$Res, _$MyOrdersStateImpl>
    implements _$$MyOrdersStateImplCopyWith<$Res> {
  __$$MyOrdersStateImplCopyWithImpl(
      _$MyOrdersStateImpl _value, $Res Function(_$MyOrdersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userState = null,
    Object? myOrdersFeatureState = null,
  }) {
    return _then(_$MyOrdersStateImpl(
      userState: null == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as UserState,
      myOrdersFeatureState: null == myOrdersFeatureState
          ? _value.myOrdersFeatureState
          : myOrdersFeatureState // ignore: cast_nullable_to_non_nullable
              as MyOrdersFeatureState,
    ));
  }
}

/// @nodoc

class _$MyOrdersStateImpl extends _MyOrdersState {
  const _$MyOrdersStateImpl(
      {this.userState = const UserState.unauthorized(),
      this.myOrdersFeatureState = const MyOrdersFeatureState.loading()})
      : super._();

  @override
  @JsonKey()
  final UserState userState;
  @override
  @JsonKey()
  final MyOrdersFeatureState myOrdersFeatureState;

  @override
  String toString() {
    return 'MyOrdersState(userState: $userState, myOrdersFeatureState: $myOrdersFeatureState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersStateImpl &&
            (identical(other.userState, userState) ||
                other.userState == userState) &&
            (identical(other.myOrdersFeatureState, myOrdersFeatureState) ||
                other.myOrdersFeatureState == myOrdersFeatureState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userState, myOrdersFeatureState);

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersStateImplCopyWith<_$MyOrdersStateImpl> get copyWith =>
      __$$MyOrdersStateImplCopyWithImpl<_$MyOrdersStateImpl>(this, _$identity);
}

abstract class _MyOrdersState extends MyOrdersState {
  const factory _MyOrdersState(
      {final UserState userState,
      final MyOrdersFeatureState myOrdersFeatureState}) = _$MyOrdersStateImpl;
  const _MyOrdersState._() : super._();

  @override
  UserState get userState;
  @override
  MyOrdersFeatureState get myOrdersFeatureState;

  /// Create a copy of MyOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersStateImplCopyWith<_$MyOrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
