// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_bookings_feature_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyBookingsFeatureBlocData {
  MyBookingsTypePolicy get typePolicy => throw _privateConstructorUsedError;

  /// Create a copy of MyBookingsFeatureBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyBookingsFeatureBlocDataCopyWith<MyBookingsFeatureBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBookingsFeatureBlocDataCopyWith<$Res> {
  factory $MyBookingsFeatureBlocDataCopyWith(MyBookingsFeatureBlocData value,
          $Res Function(MyBookingsFeatureBlocData) then) =
      _$MyBookingsFeatureBlocDataCopyWithImpl<$Res, MyBookingsFeatureBlocData>;
  @useResult
  $Res call({MyBookingsTypePolicy typePolicy});
}

/// @nodoc
class _$MyBookingsFeatureBlocDataCopyWithImpl<$Res,
        $Val extends MyBookingsFeatureBlocData>
    implements $MyBookingsFeatureBlocDataCopyWith<$Res> {
  _$MyBookingsFeatureBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyBookingsFeatureBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typePolicy = null,
  }) {
    return _then(_value.copyWith(
      typePolicy: null == typePolicy
          ? _value.typePolicy
          : typePolicy // ignore: cast_nullable_to_non_nullable
              as MyBookingsTypePolicy,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyBookingsFeatureBlocDataImplCopyWith<$Res>
    implements $MyBookingsFeatureBlocDataCopyWith<$Res> {
  factory _$$MyBookingsFeatureBlocDataImplCopyWith(
          _$MyBookingsFeatureBlocDataImpl value,
          $Res Function(_$MyBookingsFeatureBlocDataImpl) then) =
      __$$MyBookingsFeatureBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyBookingsTypePolicy typePolicy});
}

/// @nodoc
class __$$MyBookingsFeatureBlocDataImplCopyWithImpl<$Res>
    extends _$MyBookingsFeatureBlocDataCopyWithImpl<$Res,
        _$MyBookingsFeatureBlocDataImpl>
    implements _$$MyBookingsFeatureBlocDataImplCopyWith<$Res> {
  __$$MyBookingsFeatureBlocDataImplCopyWithImpl(
      _$MyBookingsFeatureBlocDataImpl _value,
      $Res Function(_$MyBookingsFeatureBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyBookingsFeatureBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typePolicy = null,
  }) {
    return _then(_$MyBookingsFeatureBlocDataImpl(
      typePolicy: null == typePolicy
          ? _value.typePolicy
          : typePolicy // ignore: cast_nullable_to_non_nullable
              as MyBookingsTypePolicy,
    ));
  }
}

/// @nodoc

class _$MyBookingsFeatureBlocDataImpl implements _MyBookingsFeatureBlocData {
  const _$MyBookingsFeatureBlocDataImpl({required this.typePolicy});

  @override
  final MyBookingsTypePolicy typePolicy;

  @override
  String toString() {
    return 'MyBookingsFeatureBlocData(typePolicy: $typePolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyBookingsFeatureBlocDataImpl &&
            (identical(other.typePolicy, typePolicy) ||
                other.typePolicy == typePolicy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typePolicy);

  /// Create a copy of MyBookingsFeatureBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyBookingsFeatureBlocDataImplCopyWith<_$MyBookingsFeatureBlocDataImpl>
      get copyWith => __$$MyBookingsFeatureBlocDataImplCopyWithImpl<
          _$MyBookingsFeatureBlocDataImpl>(this, _$identity);
}

abstract class _MyBookingsFeatureBlocData implements MyBookingsFeatureBlocData {
  const factory _MyBookingsFeatureBlocData(
          {required final MyBookingsTypePolicy typePolicy}) =
      _$MyBookingsFeatureBlocDataImpl;

  @override
  MyBookingsTypePolicy get typePolicy;

  /// Create a copy of MyBookingsFeatureBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyBookingsFeatureBlocDataImplCopyWith<_$MyBookingsFeatureBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
