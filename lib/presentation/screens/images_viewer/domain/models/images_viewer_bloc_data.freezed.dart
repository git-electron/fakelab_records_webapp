// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_viewer_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImagesViewerBlocData {
  List<String> get images => throw _privateConstructorUsedError;
  int get initialIndex => throw _privateConstructorUsedError;

  /// Create a copy of ImagesViewerBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesViewerBlocDataCopyWith<ImagesViewerBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesViewerBlocDataCopyWith<$Res> {
  factory $ImagesViewerBlocDataCopyWith(ImagesViewerBlocData value,
          $Res Function(ImagesViewerBlocData) then) =
      _$ImagesViewerBlocDataCopyWithImpl<$Res, ImagesViewerBlocData>;
  @useResult
  $Res call({List<String> images, int initialIndex});
}

/// @nodoc
class _$ImagesViewerBlocDataCopyWithImpl<$Res,
        $Val extends ImagesViewerBlocData>
    implements $ImagesViewerBlocDataCopyWith<$Res> {
  _$ImagesViewerBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagesViewerBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? initialIndex = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      initialIndex: null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesViewerBlocDataImplCopyWith<$Res>
    implements $ImagesViewerBlocDataCopyWith<$Res> {
  factory _$$ImagesViewerBlocDataImplCopyWith(_$ImagesViewerBlocDataImpl value,
          $Res Function(_$ImagesViewerBlocDataImpl) then) =
      __$$ImagesViewerBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> images, int initialIndex});
}

/// @nodoc
class __$$ImagesViewerBlocDataImplCopyWithImpl<$Res>
    extends _$ImagesViewerBlocDataCopyWithImpl<$Res, _$ImagesViewerBlocDataImpl>
    implements _$$ImagesViewerBlocDataImplCopyWith<$Res> {
  __$$ImagesViewerBlocDataImplCopyWithImpl(_$ImagesViewerBlocDataImpl _value,
      $Res Function(_$ImagesViewerBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesViewerBlocData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? initialIndex = null,
  }) {
    return _then(_$ImagesViewerBlocDataImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      initialIndex: null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ImagesViewerBlocDataImpl implements _ImagesViewerBlocData {
  const _$ImagesViewerBlocDataImpl(
      {required final List<String> images, required this.initialIndex})
      : _images = images;

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int initialIndex;

  @override
  String toString() {
    return 'ImagesViewerBlocData(images: $images, initialIndex: $initialIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesViewerBlocDataImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_images), initialIndex);

  /// Create a copy of ImagesViewerBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesViewerBlocDataImplCopyWith<_$ImagesViewerBlocDataImpl>
      get copyWith =>
          __$$ImagesViewerBlocDataImplCopyWithImpl<_$ImagesViewerBlocDataImpl>(
              this, _$identity);
}

abstract class _ImagesViewerBlocData implements ImagesViewerBlocData {
  const factory _ImagesViewerBlocData(
      {required final List<String> images,
      required final int initialIndex}) = _$ImagesViewerBlocDataImpl;

  @override
  List<String> get images;
  @override
  int get initialIndex;

  /// Create a copy of ImagesViewerBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesViewerBlocDataImplCopyWith<_$ImagesViewerBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
