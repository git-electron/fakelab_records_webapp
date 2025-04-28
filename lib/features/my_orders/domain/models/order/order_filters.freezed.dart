// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderFilters _$OrderFiltersFromJson(Map<String, dynamic> json) {
  return _OrderFilters.fromJson(json);
}

/// @nodoc
mixin _$OrderFilters {
  String get userIdStatusType => throw _privateConstructorUsedError;

  /// Serializes this OrderFilters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderFiltersCopyWith<OrderFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFiltersCopyWith<$Res> {
  factory $OrderFiltersCopyWith(
          OrderFilters value, $Res Function(OrderFilters) then) =
      _$OrderFiltersCopyWithImpl<$Res, OrderFilters>;
  @useResult
  $Res call({String userIdStatusType});
}

/// @nodoc
class _$OrderFiltersCopyWithImpl<$Res, $Val extends OrderFilters>
    implements $OrderFiltersCopyWith<$Res> {
  _$OrderFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIdStatusType = null,
  }) {
    return _then(_value.copyWith(
      userIdStatusType: null == userIdStatusType
          ? _value.userIdStatusType
          : userIdStatusType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderFiltersImplCopyWith<$Res>
    implements $OrderFiltersCopyWith<$Res> {
  factory _$$OrderFiltersImplCopyWith(
          _$OrderFiltersImpl value, $Res Function(_$OrderFiltersImpl) then) =
      __$$OrderFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userIdStatusType});
}

/// @nodoc
class __$$OrderFiltersImplCopyWithImpl<$Res>
    extends _$OrderFiltersCopyWithImpl<$Res, _$OrderFiltersImpl>
    implements _$$OrderFiltersImplCopyWith<$Res> {
  __$$OrderFiltersImplCopyWithImpl(
      _$OrderFiltersImpl _value, $Res Function(_$OrderFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIdStatusType = null,
  }) {
    return _then(_$OrderFiltersImpl(
      userIdStatusType: null == userIdStatusType
          ? _value.userIdStatusType
          : userIdStatusType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderFiltersImpl implements _OrderFilters {
  _$OrderFiltersImpl({required this.userIdStatusType});

  factory _$OrderFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderFiltersImplFromJson(json);

  @override
  final String userIdStatusType;

  @override
  String toString() {
    return 'OrderFilters(userIdStatusType: $userIdStatusType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderFiltersImpl &&
            (identical(other.userIdStatusType, userIdStatusType) ||
                other.userIdStatusType == userIdStatusType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userIdStatusType);

  /// Create a copy of OrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderFiltersImplCopyWith<_$OrderFiltersImpl> get copyWith =>
      __$$OrderFiltersImplCopyWithImpl<_$OrderFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderFiltersImplToJson(
      this,
    );
  }
}

abstract class _OrderFilters implements OrderFilters {
  factory _OrderFilters({required final String userIdStatusType}) =
      _$OrderFiltersImpl;

  factory _OrderFilters.fromJson(Map<String, dynamic> json) =
      _$OrderFiltersImpl.fromJson;

  @override
  String get userIdStatusType;

  /// Create a copy of OrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderFiltersImplCopyWith<_$OrderFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
