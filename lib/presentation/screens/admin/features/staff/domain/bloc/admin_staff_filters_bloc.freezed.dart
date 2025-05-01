// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_staff_filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminStaffFiltersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searchQueryChanged,
    required TResult Function(OrderServiceType? serviceType)
        serviceTypeFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? searchQueryChanged,
    TResult? Function(OrderServiceType? serviceType)? serviceTypeFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searchQueryChanged,
    TResult Function(OrderServiceType? serviceType)? serviceTypeFilterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_ServiceTypeFilterChanged value)
        serviceTypeFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_ServiceTypeFilterChanged value)?
        serviceTypeFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_ServiceTypeFilterChanged value)? serviceTypeFilterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStaffFiltersEventCopyWith<$Res> {
  factory $AdminStaffFiltersEventCopyWith(AdminStaffFiltersEvent value,
          $Res Function(AdminStaffFiltersEvent) then) =
      _$AdminStaffFiltersEventCopyWithImpl<$Res, AdminStaffFiltersEvent>;
}

/// @nodoc
class _$AdminStaffFiltersEventCopyWithImpl<$Res,
        $Val extends AdminStaffFiltersEvent>
    implements $AdminStaffFiltersEventCopyWith<$Res> {
  _$AdminStaffFiltersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminStaffFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchQueryChangedImplCopyWith<$Res> {
  factory _$$SearchQueryChangedImplCopyWith(_$SearchQueryChangedImpl value,
          $Res Function(_$SearchQueryChangedImpl) then) =
      __$$SearchQueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$SearchQueryChangedImplCopyWithImpl<$Res>
    extends _$AdminStaffFiltersEventCopyWithImpl<$Res, _$SearchQueryChangedImpl>
    implements _$$SearchQueryChangedImplCopyWith<$Res> {
  __$$SearchQueryChangedImplCopyWithImpl(_$SearchQueryChangedImpl _value,
      $Res Function(_$SearchQueryChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminStaffFiltersEvent
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
    return 'AdminStaffFiltersEvent.searchQueryChanged(query: $query)';
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

  /// Create a copy of AdminStaffFiltersEvent
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
    required TResult Function(OrderServiceType? serviceType)
        serviceTypeFilterChanged,
  }) {
    return searchQueryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? searchQueryChanged,
    TResult? Function(OrderServiceType? serviceType)? serviceTypeFilterChanged,
  }) {
    return searchQueryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searchQueryChanged,
    TResult Function(OrderServiceType? serviceType)? serviceTypeFilterChanged,
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
    required TResult Function(_ServiceTypeFilterChanged value)
        serviceTypeFilterChanged,
  }) {
    return searchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_ServiceTypeFilterChanged value)?
        serviceTypeFilterChanged,
  }) {
    return searchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_ServiceTypeFilterChanged value)? serviceTypeFilterChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchQueryChanged implements AdminStaffFiltersEvent {
  const factory _SearchQueryChanged(final String? query) =
      _$SearchQueryChangedImpl;

  String? get query;

  /// Create a copy of AdminStaffFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceTypeFilterChangedImplCopyWith<$Res> {
  factory _$$ServiceTypeFilterChangedImplCopyWith(
          _$ServiceTypeFilterChangedImpl value,
          $Res Function(_$ServiceTypeFilterChangedImpl) then) =
      __$$ServiceTypeFilterChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderServiceType? serviceType});
}

/// @nodoc
class __$$ServiceTypeFilterChangedImplCopyWithImpl<$Res>
    extends _$AdminStaffFiltersEventCopyWithImpl<$Res,
        _$ServiceTypeFilterChangedImpl>
    implements _$$ServiceTypeFilterChangedImplCopyWith<$Res> {
  __$$ServiceTypeFilterChangedImplCopyWithImpl(
      _$ServiceTypeFilterChangedImpl _value,
      $Res Function(_$ServiceTypeFilterChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminStaffFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceType = freezed,
  }) {
    return _then(_$ServiceTypeFilterChangedImpl(
      freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as OrderServiceType?,
    ));
  }
}

/// @nodoc

class _$ServiceTypeFilterChangedImpl implements _ServiceTypeFilterChanged {
  const _$ServiceTypeFilterChangedImpl(this.serviceType);

  @override
  final OrderServiceType? serviceType;

  @override
  String toString() {
    return 'AdminStaffFiltersEvent.serviceTypeFilterChanged(serviceType: $serviceType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceTypeFilterChangedImpl &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceType);

  /// Create a copy of AdminStaffFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceTypeFilterChangedImplCopyWith<_$ServiceTypeFilterChangedImpl>
      get copyWith => __$$ServiceTypeFilterChangedImplCopyWithImpl<
          _$ServiceTypeFilterChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searchQueryChanged,
    required TResult Function(OrderServiceType? serviceType)
        serviceTypeFilterChanged,
  }) {
    return serviceTypeFilterChanged(serviceType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? searchQueryChanged,
    TResult? Function(OrderServiceType? serviceType)? serviceTypeFilterChanged,
  }) {
    return serviceTypeFilterChanged?.call(serviceType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searchQueryChanged,
    TResult Function(OrderServiceType? serviceType)? serviceTypeFilterChanged,
    required TResult orElse(),
  }) {
    if (serviceTypeFilterChanged != null) {
      return serviceTypeFilterChanged(serviceType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_ServiceTypeFilterChanged value)
        serviceTypeFilterChanged,
  }) {
    return serviceTypeFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_ServiceTypeFilterChanged value)?
        serviceTypeFilterChanged,
  }) {
    return serviceTypeFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_ServiceTypeFilterChanged value)? serviceTypeFilterChanged,
    required TResult orElse(),
  }) {
    if (serviceTypeFilterChanged != null) {
      return serviceTypeFilterChanged(this);
    }
    return orElse();
  }
}

abstract class _ServiceTypeFilterChanged implements AdminStaffFiltersEvent {
  const factory _ServiceTypeFilterChanged(final OrderServiceType? serviceType) =
      _$ServiceTypeFilterChangedImpl;

  OrderServiceType? get serviceType;

  /// Create a copy of AdminStaffFiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceTypeFilterChangedImplCopyWith<_$ServiceTypeFilterChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminStaffFiltersState {
  String? get searchQuery => throw _privateConstructorUsedError;
  OrderServiceType? get serviceType => throw _privateConstructorUsedError;

  /// Create a copy of AdminStaffFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminStaffFiltersStateCopyWith<AdminStaffFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStaffFiltersStateCopyWith<$Res> {
  factory $AdminStaffFiltersStateCopyWith(AdminStaffFiltersState value,
          $Res Function(AdminStaffFiltersState) then) =
      _$AdminStaffFiltersStateCopyWithImpl<$Res, AdminStaffFiltersState>;
  @useResult
  $Res call({String? searchQuery, OrderServiceType? serviceType});
}

/// @nodoc
class _$AdminStaffFiltersStateCopyWithImpl<$Res,
        $Val extends AdminStaffFiltersState>
    implements $AdminStaffFiltersStateCopyWith<$Res> {
  _$AdminStaffFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminStaffFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? serviceType = freezed,
  }) {
    return _then(_value.copyWith(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as OrderServiceType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminStaffFiltersStateImplCopyWith<$Res>
    implements $AdminStaffFiltersStateCopyWith<$Res> {
  factory _$$AdminStaffFiltersStateImplCopyWith(
          _$AdminStaffFiltersStateImpl value,
          $Res Function(_$AdminStaffFiltersStateImpl) then) =
      __$$AdminStaffFiltersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? searchQuery, OrderServiceType? serviceType});
}

/// @nodoc
class __$$AdminStaffFiltersStateImplCopyWithImpl<$Res>
    extends _$AdminStaffFiltersStateCopyWithImpl<$Res,
        _$AdminStaffFiltersStateImpl>
    implements _$$AdminStaffFiltersStateImplCopyWith<$Res> {
  __$$AdminStaffFiltersStateImplCopyWithImpl(
      _$AdminStaffFiltersStateImpl _value,
      $Res Function(_$AdminStaffFiltersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminStaffFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? serviceType = freezed,
  }) {
    return _then(_$AdminStaffFiltersStateImpl(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as OrderServiceType?,
    ));
  }
}

/// @nodoc

class _$AdminStaffFiltersStateImpl extends _AdminStaffFiltersState {
  const _$AdminStaffFiltersStateImpl({this.searchQuery, this.serviceType})
      : super._();

  @override
  final String? searchQuery;
  @override
  final OrderServiceType? serviceType;

  @override
  String toString() {
    return 'AdminStaffFiltersState(searchQuery: $searchQuery, serviceType: $serviceType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminStaffFiltersStateImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, serviceType);

  /// Create a copy of AdminStaffFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminStaffFiltersStateImplCopyWith<_$AdminStaffFiltersStateImpl>
      get copyWith => __$$AdminStaffFiltersStateImplCopyWithImpl<
          _$AdminStaffFiltersStateImpl>(this, _$identity);
}

abstract class _AdminStaffFiltersState extends AdminStaffFiltersState {
  const factory _AdminStaffFiltersState(
      {final String? searchQuery,
      final OrderServiceType? serviceType}) = _$AdminStaffFiltersStateImpl;
  const _AdminStaffFiltersState._() : super._();

  @override
  String? get searchQuery;
  @override
  OrderServiceType? get serviceType;

  /// Create a copy of AdminStaffFiltersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminStaffFiltersStateImplCopyWith<_$AdminStaffFiltersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
