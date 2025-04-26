// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
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
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
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
    extends _$HomeEventCopyWithImpl<$Res, _$UserStateChangedImpl>
    implements _$$UserStateChangedImplCopyWith<$Res> {
  __$$UserStateChangedImplCopyWithImpl(_$UserStateChangedImpl _value,
      $Res Function(_$UserStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
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

  /// Create a copy of HomeEvent
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
    return 'HomeEvent.userStateChanged(state: $state)';
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

  /// Create a copy of HomeEvent
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

abstract class _UserStateChanged implements HomeEvent {
  const factory _UserStateChanged(final UserState state) =
      _$UserStateChangedImpl;

  @override
  UserState get state;

  /// Create a copy of HomeEvent
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
    extends _$HomeEventCopyWithImpl<$Res, _$MyOrdersFeatureStateChangedImpl>
    implements _$$MyOrdersFeatureStateChangedImplCopyWith<$Res> {
  __$$MyOrdersFeatureStateChangedImplCopyWithImpl(
      _$MyOrdersFeatureStateChangedImpl _value,
      $Res Function(_$MyOrdersFeatureStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
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

  /// Create a copy of HomeEvent
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
    return 'HomeEvent.myOrdersFeatureStateChanged(state: $state)';
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

  /// Create a copy of HomeEvent
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

abstract class _MyOrdersFeatureStateChanged implements HomeEvent {
  const factory _MyOrdersFeatureStateChanged(final MyOrdersFeatureState state) =
      _$MyOrdersFeatureStateChangedImpl;

  @override
  MyOrdersFeatureState get state;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersFeatureStateChangedImplCopyWith<_$MyOrdersFeatureStateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  UserState get userState => throw _privateConstructorUsedError;
  MyOrdersFeatureState get myOrdersFeatureState =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({UserState userState, MyOrdersFeatureState myOrdersFeatureState});

  $UserStateCopyWith<$Res> get userState;
  $MyOrdersFeatureStateCopyWith<$Res> get myOrdersFeatureState;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
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

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStateCopyWith<$Res> get userState {
    return $UserStateCopyWith<$Res>(_value.userState, (value) {
      return _then(_value.copyWith(userState: value) as $Val);
    });
  }

  /// Create a copy of HomeState
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
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserState userState, MyOrdersFeatureState myOrdersFeatureState});

  @override
  $UserStateCopyWith<$Res> get userState;
  @override
  $MyOrdersFeatureStateCopyWith<$Res> get myOrdersFeatureState;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userState = null,
    Object? myOrdersFeatureState = null,
  }) {
    return _then(_$HomeStateImpl(
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

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
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
    return 'HomeState(userState: $userState, myOrdersFeatureState: $myOrdersFeatureState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.userState, userState) ||
                other.userState == userState) &&
            (identical(other.myOrdersFeatureState, myOrdersFeatureState) ||
                other.myOrdersFeatureState == myOrdersFeatureState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userState, myOrdersFeatureState);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final UserState userState,
      final MyOrdersFeatureState myOrdersFeatureState}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  UserState get userState;
  @override
  MyOrdersFeatureState get myOrdersFeatureState;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
