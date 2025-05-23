// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_orders_feature_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyOrdersFeatureBlocData {
  MyOrdersLimitPolicy get limitPolicy => throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersFeatureBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersFeatureBlocDataCopyWith<MyOrdersFeatureBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersFeatureBlocDataCopyWith<$Res> {
  factory $MyOrdersFeatureBlocDataCopyWith(MyOrdersFeatureBlocData value,
          $Res Function(MyOrdersFeatureBlocData) then) =
      _$MyOrdersFeatureBlocDataCopyWithImpl<$Res, MyOrdersFeatureBlocData>;
  @useResult
  $Res call({MyOrdersLimitPolicy limitPolicy});
}

/// @nodoc
class _$MyOrdersFeatureBlocDataCopyWithImpl<$Res,
        $Val extends MyOrdersFeatureBlocData>
    implements $MyOrdersFeatureBlocDataCopyWith<$Res> {
  _$MyOrdersFeatureBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersFeatureBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limitPolicy = null,
  }) {
    return _then(_value.copyWith(
      limitPolicy: null == limitPolicy
          ? _value.limitPolicy
          : limitPolicy // ignore: cast_nullable_to_non_nullable
              as MyOrdersLimitPolicy,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersFeatureBlocDataImplCopyWith<$Res>
    implements $MyOrdersFeatureBlocDataCopyWith<$Res> {
  factory _$$MyOrdersFeatureBlocDataImplCopyWith(
          _$MyOrdersFeatureBlocDataImpl value,
          $Res Function(_$MyOrdersFeatureBlocDataImpl) then) =
      __$$MyOrdersFeatureBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyOrdersLimitPolicy limitPolicy});
}

/// @nodoc
class __$$MyOrdersFeatureBlocDataImplCopyWithImpl<$Res>
    extends _$MyOrdersFeatureBlocDataCopyWithImpl<$Res,
        _$MyOrdersFeatureBlocDataImpl>
    implements _$$MyOrdersFeatureBlocDataImplCopyWith<$Res> {
  __$$MyOrdersFeatureBlocDataImplCopyWithImpl(
      _$MyOrdersFeatureBlocDataImpl _value,
      $Res Function(_$MyOrdersFeatureBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersFeatureBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limitPolicy = null,
  }) {
    return _then(_$MyOrdersFeatureBlocDataImpl(
      limitPolicy: null == limitPolicy
          ? _value.limitPolicy
          : limitPolicy // ignore: cast_nullable_to_non_nullable
              as MyOrdersLimitPolicy,
    ));
  }
}

/// @nodoc

class _$MyOrdersFeatureBlocDataImpl implements _MyOrdersFeatureBlocData {
  const _$MyOrdersFeatureBlocDataImpl({required this.limitPolicy});

  @override
  final MyOrdersLimitPolicy limitPolicy;

  @override
  String toString() {
    return 'MyOrdersFeatureBlocData(limitPolicy: $limitPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersFeatureBlocDataImpl &&
            (identical(other.limitPolicy, limitPolicy) ||
                other.limitPolicy == limitPolicy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limitPolicy);

  /// Create a copy of MyOrdersFeatureBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersFeatureBlocDataImplCopyWith<_$MyOrdersFeatureBlocDataImpl>
      get copyWith => __$$MyOrdersFeatureBlocDataImplCopyWithImpl<
          _$MyOrdersFeatureBlocDataImpl>(this, _$identity);
}

abstract class _MyOrdersFeatureBlocData implements MyOrdersFeatureBlocData {
  const factory _MyOrdersFeatureBlocData(
          {required final MyOrdersLimitPolicy limitPolicy}) =
      _$MyOrdersFeatureBlocDataImpl;

  @override
  MyOrdersLimitPolicy get limitPolicy;

  /// Create a copy of MyOrdersFeatureBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersFeatureBlocDataImplCopyWith<_$MyOrdersFeatureBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
