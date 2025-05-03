// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_clients_filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminClientsFiltersEvent {
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searchQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AdminClientsFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminClientsFiltersEventCopyWith<AdminClientsFiltersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminClientsFiltersEventCopyWith<$Res> {
  factory $AdminClientsFiltersEventCopyWith(AdminClientsFiltersEvent value,
          $Res Function(AdminClientsFiltersEvent) then) =
      _$AdminClientsFiltersEventCopyWithImpl<$Res, AdminClientsFiltersEvent>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$AdminClientsFiltersEventCopyWithImpl<$Res,
        $Val extends AdminClientsFiltersEvent>
    implements $AdminClientsFiltersEventCopyWith<$Res> {
  _$AdminClientsFiltersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminClientsFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchQueryChangedImplCopyWith<$Res>
    implements $AdminClientsFiltersEventCopyWith<$Res> {
  factory _$$SearchQueryChangedImplCopyWith(_$SearchQueryChangedImpl value,
          $Res Function(_$SearchQueryChangedImpl) then) =
      __$$SearchQueryChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$SearchQueryChangedImplCopyWithImpl<$Res>
    extends _$AdminClientsFiltersEventCopyWithImpl<$Res,
        _$SearchQueryChangedImpl>
    implements _$$SearchQueryChangedImplCopyWith<$Res> {
  __$$SearchQueryChangedImplCopyWithImpl(_$SearchQueryChangedImpl _value,
      $Res Function(_$SearchQueryChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminClientsFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchQueryChangedImpl(
      freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchQueryChangedImpl implements _SearchQueryChanged {
  const _$SearchQueryChangedImpl(this.query);

  @override
  final String? query;

  @override
  String toString() {
    return 'AdminClientsFiltersEvent.searchQueryChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of AdminClientsFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      __$$SearchQueryChangedImplCopyWithImpl<_$SearchQueryChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searchQueryChanged,
  }) {
    return searchQueryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? searchQueryChanged,
  }) {
    return searchQueryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) {
    return searchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) {
    return searchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchQueryChanged implements AdminClientsFiltersEvent {
  const factory _SearchQueryChanged(final String? query) =
      _$SearchQueryChangedImpl;

  @override
  String? get query;

  /// Create a copy of AdminClientsFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminClientsFiltersState {
  String? get searchQuery => throw _privateConstructorUsedError;

  /// Create a copy of AdminClientsFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminClientsFiltersStateCopyWith<AdminClientsFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminClientsFiltersStateCopyWith<$Res> {
  factory $AdminClientsFiltersStateCopyWith(AdminClientsFiltersState value,
          $Res Function(AdminClientsFiltersState) then) =
      _$AdminClientsFiltersStateCopyWithImpl<$Res, AdminClientsFiltersState>;
  @useResult
  $Res call({String? searchQuery});
}

/// @nodoc
class _$AdminClientsFiltersStateCopyWithImpl<$Res,
        $Val extends AdminClientsFiltersState>
    implements $AdminClientsFiltersStateCopyWith<$Res> {
  _$AdminClientsFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminClientsFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
  }) {
    return _then(_value.copyWith(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminClientsFiltersStateImplCopyWith<$Res>
    implements $AdminClientsFiltersStateCopyWith<$Res> {
  factory _$$AdminClientsFiltersStateImplCopyWith(
          _$AdminClientsFiltersStateImpl value,
          $Res Function(_$AdminClientsFiltersStateImpl) then) =
      __$$AdminClientsFiltersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? searchQuery});
}

/// @nodoc
class __$$AdminClientsFiltersStateImplCopyWithImpl<$Res>
    extends _$AdminClientsFiltersStateCopyWithImpl<$Res,
        _$AdminClientsFiltersStateImpl>
    implements _$$AdminClientsFiltersStateImplCopyWith<$Res> {
  __$$AdminClientsFiltersStateImplCopyWithImpl(
      _$AdminClientsFiltersStateImpl _value,
      $Res Function(_$AdminClientsFiltersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminClientsFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
  }) {
    return _then(_$AdminClientsFiltersStateImpl(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdminClientsFiltersStateImpl extends _AdminClientsFiltersState {
  const _$AdminClientsFiltersStateImpl({this.searchQuery}) : super._();

  @override
  final String? searchQuery;

  @override
  String toString() {
    return 'AdminClientsFiltersState(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminClientsFiltersStateImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  /// Create a copy of AdminClientsFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminClientsFiltersStateImplCopyWith<_$AdminClientsFiltersStateImpl>
      get copyWith => __$$AdminClientsFiltersStateImplCopyWithImpl<
          _$AdminClientsFiltersStateImpl>(this, _$identity);
}

abstract class _AdminClientsFiltersState extends AdminClientsFiltersState {
  const factory _AdminClientsFiltersState({final String? searchQuery}) =
      _$AdminClientsFiltersStateImpl;
  const _AdminClientsFiltersState._() : super._();

  @override
  String? get searchQuery;

  /// Create a copy of AdminClientsFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminClientsFiltersStateImplCopyWith<_$AdminClientsFiltersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
