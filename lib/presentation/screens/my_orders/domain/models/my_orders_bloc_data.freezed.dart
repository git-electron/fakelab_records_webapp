// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_orders_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyOrdersBlocData {
  MyOrdersFeatureBloc get myOrdersFeatureBloc =>
      throw _privateConstructorUsedError;

  /// Create a copy of MyOrdersBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyOrdersBlocDataCopyWith<MyOrdersBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersBlocDataCopyWith<$Res> {
  factory $MyOrdersBlocDataCopyWith(
          MyOrdersBlocData value, $Res Function(MyOrdersBlocData) then) =
      _$MyOrdersBlocDataCopyWithImpl<$Res, MyOrdersBlocData>;
  @useResult
  $Res call({MyOrdersFeatureBloc myOrdersFeatureBloc});
}

/// @nodoc
class _$MyOrdersBlocDataCopyWithImpl<$Res, $Val extends MyOrdersBlocData>
    implements $MyOrdersBlocDataCopyWith<$Res> {
  _$MyOrdersBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyOrdersBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersFeatureBloc = null,
  }) {
    return _then(_value.copyWith(
      myOrdersFeatureBloc: null == myOrdersFeatureBloc
          ? _value.myOrdersFeatureBloc
          : myOrdersFeatureBloc // ignore: cast_nullable_to_non_nullable
              as MyOrdersFeatureBloc,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersBlocDataImplCopyWith<$Res>
    implements $MyOrdersBlocDataCopyWith<$Res> {
  factory _$$MyOrdersBlocDataImplCopyWith(_$MyOrdersBlocDataImpl value,
          $Res Function(_$MyOrdersBlocDataImpl) then) =
      __$$MyOrdersBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyOrdersFeatureBloc myOrdersFeatureBloc});
}

/// @nodoc
class __$$MyOrdersBlocDataImplCopyWithImpl<$Res>
    extends _$MyOrdersBlocDataCopyWithImpl<$Res, _$MyOrdersBlocDataImpl>
    implements _$$MyOrdersBlocDataImplCopyWith<$Res> {
  __$$MyOrdersBlocDataImplCopyWithImpl(_$MyOrdersBlocDataImpl _value,
      $Res Function(_$MyOrdersBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyOrdersBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOrdersFeatureBloc = null,
  }) {
    return _then(_$MyOrdersBlocDataImpl(
      myOrdersFeatureBloc: null == myOrdersFeatureBloc
          ? _value.myOrdersFeatureBloc
          : myOrdersFeatureBloc // ignore: cast_nullable_to_non_nullable
              as MyOrdersFeatureBloc,
    ));
  }
}

/// @nodoc

class _$MyOrdersBlocDataImpl implements _MyOrdersBlocData {
  const _$MyOrdersBlocDataImpl({required this.myOrdersFeatureBloc});

  @override
  final MyOrdersFeatureBloc myOrdersFeatureBloc;

  @override
  String toString() {
    return 'MyOrdersBlocData(myOrdersFeatureBloc: $myOrdersFeatureBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersBlocDataImpl &&
            (identical(other.myOrdersFeatureBloc, myOrdersFeatureBloc) ||
                other.myOrdersFeatureBloc == myOrdersFeatureBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, myOrdersFeatureBloc);

  /// Create a copy of MyOrdersBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersBlocDataImplCopyWith<_$MyOrdersBlocDataImpl> get copyWith =>
      __$$MyOrdersBlocDataImplCopyWithImpl<_$MyOrdersBlocDataImpl>(
          this, _$identity);
}

abstract class _MyOrdersBlocData implements MyOrdersBlocData {
  const factory _MyOrdersBlocData(
          {required final MyOrdersFeatureBloc myOrdersFeatureBloc}) =
      _$MyOrdersBlocDataImpl;

  @override
  MyOrdersFeatureBloc get myOrdersFeatureBloc;

  /// Create a copy of MyOrdersBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyOrdersBlocDataImplCopyWith<_$MyOrdersBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
