// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminEvent {
  AdminTab get tab => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdminTab tab) tabChabged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AdminTab tab)? tabChabged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdminTab tab)? tabChabged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChanged value) tabChabged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabChanged value)? tabChabged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChabged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminEventCopyWith<AdminEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminEventCopyWith<$Res> {
  factory $AdminEventCopyWith(
          AdminEvent value, $Res Function(AdminEvent) then) =
      _$AdminEventCopyWithImpl<$Res, AdminEvent>;
  @useResult
  $Res call({AdminTab tab});
}

/// @nodoc
class _$AdminEventCopyWithImpl<$Res, $Val extends AdminEvent>
    implements $AdminEventCopyWith<$Res> {
  _$AdminEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_value.copyWith(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as AdminTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabChangedImplCopyWith<$Res>
    implements $AdminEventCopyWith<$Res> {
  factory _$$TabChangedImplCopyWith(
          _$TabChangedImpl value, $Res Function(_$TabChangedImpl) then) =
      __$$TabChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdminTab tab});
}

/// @nodoc
class __$$TabChangedImplCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$TabChangedImpl>
    implements _$$TabChangedImplCopyWith<$Res> {
  __$$TabChangedImplCopyWithImpl(
      _$TabChangedImpl _value, $Res Function(_$TabChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$TabChangedImpl(
      null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as AdminTab,
    ));
  }
}

/// @nodoc

class _$TabChangedImpl implements _TabChanged {
  const _$TabChangedImpl(this.tab);

  @override
  final AdminTab tab;

  @override
  String toString() {
    return 'AdminEvent.tabChabged(tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangedImpl &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      __$$TabChangedImplCopyWithImpl<_$TabChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdminTab tab) tabChabged,
  }) {
    return tabChabged(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AdminTab tab)? tabChabged,
  }) {
    return tabChabged?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdminTab tab)? tabChabged,
    required TResult orElse(),
  }) {
    if (tabChabged != null) {
      return tabChabged(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChanged value) tabChabged,
  }) {
    return tabChabged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabChanged value)? tabChabged,
  }) {
    return tabChabged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChabged,
    required TResult orElse(),
  }) {
    if (tabChabged != null) {
      return tabChabged(this);
    }
    return orElse();
  }
}

abstract class _TabChanged implements AdminEvent {
  const factory _TabChanged(final AdminTab tab) = _$TabChangedImpl;

  @override
  AdminTab get tab;

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminState {
  AdminTab get selectedTab => throw _privateConstructorUsedError;

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminStateCopyWith<AdminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStateCopyWith<$Res> {
  factory $AdminStateCopyWith(
          AdminState value, $Res Function(AdminState) then) =
      _$AdminStateCopyWithImpl<$Res, AdminState>;
  @useResult
  $Res call({AdminTab selectedTab});
}

/// @nodoc
class _$AdminStateCopyWithImpl<$Res, $Val extends AdminState>
    implements $AdminStateCopyWith<$Res> {
  _$AdminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
  }) {
    return _then(_value.copyWith(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as AdminTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminStateImplCopyWith<$Res>
    implements $AdminStateCopyWith<$Res> {
  factory _$$AdminStateImplCopyWith(
          _$AdminStateImpl value, $Res Function(_$AdminStateImpl) then) =
      __$$AdminStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdminTab selectedTab});
}

/// @nodoc
class __$$AdminStateImplCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$AdminStateImpl>
    implements _$$AdminStateImplCopyWith<$Res> {
  __$$AdminStateImplCopyWithImpl(
      _$AdminStateImpl _value, $Res Function(_$AdminStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
  }) {
    return _then(_$AdminStateImpl(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as AdminTab,
    ));
  }
}

/// @nodoc

class _$AdminStateImpl extends _AdminState {
  const _$AdminStateImpl({this.selectedTab = AdminTab.clients}) : super._();

  @override
  @JsonKey()
  final AdminTab selectedTab;

  @override
  String toString() {
    return 'AdminState(selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminStateImpl &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTab);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminStateImplCopyWith<_$AdminStateImpl> get copyWith =>
      __$$AdminStateImplCopyWithImpl<_$AdminStateImpl>(this, _$identity);
}

abstract class _AdminState extends AdminState {
  const factory _AdminState({final AdminTab selectedTab}) = _$AdminStateImpl;
  const _AdminState._() : super._();

  @override
  AdminTab get selectedTab;

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminStateImplCopyWith<_$AdminStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
