// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'images_viewer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImagesViewerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double positionYDelta) setPositionYDelta,
    required TResult Function(double initialYPosition) setInitialYPosition,
    required TResult Function(double currentYPosition) setCurrentYPosition,
    required TResult Function(Duration animationDuration) setAnimationDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double positionYDelta)? setPositionYDelta,
    TResult? Function(double initialYPosition)? setInitialYPosition,
    TResult? Function(double currentYPosition)? setCurrentYPosition,
    TResult? Function(Duration animationDuration)? setAnimationDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double positionYDelta)? setPositionYDelta,
    TResult Function(double initialYPosition)? setInitialYPosition,
    TResult Function(double currentYPosition)? setCurrentYPosition,
    TResult Function(Duration animationDuration)? setAnimationDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPositionYDelta value) setPositionYDelta,
    required TResult Function(_SetInitialYPosition value) setInitialYPosition,
    required TResult Function(_SetCurrentYPosition value) setCurrentYPosition,
    required TResult Function(_SetAnimationDuration value) setAnimationDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPositionYDelta value)? setPositionYDelta,
    TResult? Function(_SetInitialYPosition value)? setInitialYPosition,
    TResult? Function(_SetCurrentYPosition value)? setCurrentYPosition,
    TResult? Function(_SetAnimationDuration value)? setAnimationDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPositionYDelta value)? setPositionYDelta,
    TResult Function(_SetInitialYPosition value)? setInitialYPosition,
    TResult Function(_SetCurrentYPosition value)? setCurrentYPosition,
    TResult Function(_SetAnimationDuration value)? setAnimationDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesViewerEventCopyWith<$Res> {
  factory $ImagesViewerEventCopyWith(
          ImagesViewerEvent value, $Res Function(ImagesViewerEvent) then) =
      _$ImagesViewerEventCopyWithImpl<$Res, ImagesViewerEvent>;
}

/// @nodoc
class _$ImagesViewerEventCopyWithImpl<$Res, $Val extends ImagesViewerEvent>
    implements $ImagesViewerEventCopyWith<$Res> {
  _$ImagesViewerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetPositionYDeltaImplCopyWith<$Res> {
  factory _$$SetPositionYDeltaImplCopyWith(_$SetPositionYDeltaImpl value,
          $Res Function(_$SetPositionYDeltaImpl) then) =
      __$$SetPositionYDeltaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double positionYDelta});
}

/// @nodoc
class __$$SetPositionYDeltaImplCopyWithImpl<$Res>
    extends _$ImagesViewerEventCopyWithImpl<$Res, _$SetPositionYDeltaImpl>
    implements _$$SetPositionYDeltaImplCopyWith<$Res> {
  __$$SetPositionYDeltaImplCopyWithImpl(_$SetPositionYDeltaImpl _value,
      $Res Function(_$SetPositionYDeltaImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionYDelta = null,
  }) {
    return _then(_$SetPositionYDeltaImpl(
      null == positionYDelta
          ? _value.positionYDelta
          : positionYDelta // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetPositionYDeltaImpl implements _SetPositionYDelta {
  const _$SetPositionYDeltaImpl(this.positionYDelta);

  @override
  final double positionYDelta;

  @override
  String toString() {
    return 'ImagesViewerEvent.setPositionYDelta(positionYDelta: $positionYDelta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPositionYDeltaImpl &&
            (identical(other.positionYDelta, positionYDelta) ||
                other.positionYDelta == positionYDelta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, positionYDelta);

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPositionYDeltaImplCopyWith<_$SetPositionYDeltaImpl> get copyWith =>
      __$$SetPositionYDeltaImplCopyWithImpl<_$SetPositionYDeltaImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double positionYDelta) setPositionYDelta,
    required TResult Function(double initialYPosition) setInitialYPosition,
    required TResult Function(double currentYPosition) setCurrentYPosition,
    required TResult Function(Duration animationDuration) setAnimationDuration,
  }) {
    return setPositionYDelta(positionYDelta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double positionYDelta)? setPositionYDelta,
    TResult? Function(double initialYPosition)? setInitialYPosition,
    TResult? Function(double currentYPosition)? setCurrentYPosition,
    TResult? Function(Duration animationDuration)? setAnimationDuration,
  }) {
    return setPositionYDelta?.call(positionYDelta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double positionYDelta)? setPositionYDelta,
    TResult Function(double initialYPosition)? setInitialYPosition,
    TResult Function(double currentYPosition)? setCurrentYPosition,
    TResult Function(Duration animationDuration)? setAnimationDuration,
    required TResult orElse(),
  }) {
    if (setPositionYDelta != null) {
      return setPositionYDelta(positionYDelta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPositionYDelta value) setPositionYDelta,
    required TResult Function(_SetInitialYPosition value) setInitialYPosition,
    required TResult Function(_SetCurrentYPosition value) setCurrentYPosition,
    required TResult Function(_SetAnimationDuration value) setAnimationDuration,
  }) {
    return setPositionYDelta(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPositionYDelta value)? setPositionYDelta,
    TResult? Function(_SetInitialYPosition value)? setInitialYPosition,
    TResult? Function(_SetCurrentYPosition value)? setCurrentYPosition,
    TResult? Function(_SetAnimationDuration value)? setAnimationDuration,
  }) {
    return setPositionYDelta?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPositionYDelta value)? setPositionYDelta,
    TResult Function(_SetInitialYPosition value)? setInitialYPosition,
    TResult Function(_SetCurrentYPosition value)? setCurrentYPosition,
    TResult Function(_SetAnimationDuration value)? setAnimationDuration,
    required TResult orElse(),
  }) {
    if (setPositionYDelta != null) {
      return setPositionYDelta(this);
    }
    return orElse();
  }
}

abstract class _SetPositionYDelta implements ImagesViewerEvent {
  const factory _SetPositionYDelta(final double positionYDelta) =
      _$SetPositionYDeltaImpl;

  double get positionYDelta;

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPositionYDeltaImplCopyWith<_$SetPositionYDeltaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetInitialYPositionImplCopyWith<$Res> {
  factory _$$SetInitialYPositionImplCopyWith(_$SetInitialYPositionImpl value,
          $Res Function(_$SetInitialYPositionImpl) then) =
      __$$SetInitialYPositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double initialYPosition});
}

/// @nodoc
class __$$SetInitialYPositionImplCopyWithImpl<$Res>
    extends _$ImagesViewerEventCopyWithImpl<$Res, _$SetInitialYPositionImpl>
    implements _$$SetInitialYPositionImplCopyWith<$Res> {
  __$$SetInitialYPositionImplCopyWithImpl(_$SetInitialYPositionImpl _value,
      $Res Function(_$SetInitialYPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialYPosition = null,
  }) {
    return _then(_$SetInitialYPositionImpl(
      null == initialYPosition
          ? _value.initialYPosition
          : initialYPosition // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetInitialYPositionImpl implements _SetInitialYPosition {
  const _$SetInitialYPositionImpl(this.initialYPosition);

  @override
  final double initialYPosition;

  @override
  String toString() {
    return 'ImagesViewerEvent.setInitialYPosition(initialYPosition: $initialYPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetInitialYPositionImpl &&
            (identical(other.initialYPosition, initialYPosition) ||
                other.initialYPosition == initialYPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialYPosition);

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetInitialYPositionImplCopyWith<_$SetInitialYPositionImpl> get copyWith =>
      __$$SetInitialYPositionImplCopyWithImpl<_$SetInitialYPositionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double positionYDelta) setPositionYDelta,
    required TResult Function(double initialYPosition) setInitialYPosition,
    required TResult Function(double currentYPosition) setCurrentYPosition,
    required TResult Function(Duration animationDuration) setAnimationDuration,
  }) {
    return setInitialYPosition(initialYPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double positionYDelta)? setPositionYDelta,
    TResult? Function(double initialYPosition)? setInitialYPosition,
    TResult? Function(double currentYPosition)? setCurrentYPosition,
    TResult? Function(Duration animationDuration)? setAnimationDuration,
  }) {
    return setInitialYPosition?.call(initialYPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double positionYDelta)? setPositionYDelta,
    TResult Function(double initialYPosition)? setInitialYPosition,
    TResult Function(double currentYPosition)? setCurrentYPosition,
    TResult Function(Duration animationDuration)? setAnimationDuration,
    required TResult orElse(),
  }) {
    if (setInitialYPosition != null) {
      return setInitialYPosition(initialYPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPositionYDelta value) setPositionYDelta,
    required TResult Function(_SetInitialYPosition value) setInitialYPosition,
    required TResult Function(_SetCurrentYPosition value) setCurrentYPosition,
    required TResult Function(_SetAnimationDuration value) setAnimationDuration,
  }) {
    return setInitialYPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPositionYDelta value)? setPositionYDelta,
    TResult? Function(_SetInitialYPosition value)? setInitialYPosition,
    TResult? Function(_SetCurrentYPosition value)? setCurrentYPosition,
    TResult? Function(_SetAnimationDuration value)? setAnimationDuration,
  }) {
    return setInitialYPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPositionYDelta value)? setPositionYDelta,
    TResult Function(_SetInitialYPosition value)? setInitialYPosition,
    TResult Function(_SetCurrentYPosition value)? setCurrentYPosition,
    TResult Function(_SetAnimationDuration value)? setAnimationDuration,
    required TResult orElse(),
  }) {
    if (setInitialYPosition != null) {
      return setInitialYPosition(this);
    }
    return orElse();
  }
}

abstract class _SetInitialYPosition implements ImagesViewerEvent {
  const factory _SetInitialYPosition(final double initialYPosition) =
      _$SetInitialYPositionImpl;

  double get initialYPosition;

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetInitialYPositionImplCopyWith<_$SetInitialYPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCurrentYPositionImplCopyWith<$Res> {
  factory _$$SetCurrentYPositionImplCopyWith(_$SetCurrentYPositionImpl value,
          $Res Function(_$SetCurrentYPositionImpl) then) =
      __$$SetCurrentYPositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double currentYPosition});
}

/// @nodoc
class __$$SetCurrentYPositionImplCopyWithImpl<$Res>
    extends _$ImagesViewerEventCopyWithImpl<$Res, _$SetCurrentYPositionImpl>
    implements _$$SetCurrentYPositionImplCopyWith<$Res> {
  __$$SetCurrentYPositionImplCopyWithImpl(_$SetCurrentYPositionImpl _value,
      $Res Function(_$SetCurrentYPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentYPosition = null,
  }) {
    return _then(_$SetCurrentYPositionImpl(
      null == currentYPosition
          ? _value.currentYPosition
          : currentYPosition // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetCurrentYPositionImpl implements _SetCurrentYPosition {
  const _$SetCurrentYPositionImpl(this.currentYPosition);

  @override
  final double currentYPosition;

  @override
  String toString() {
    return 'ImagesViewerEvent.setCurrentYPosition(currentYPosition: $currentYPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCurrentYPositionImpl &&
            (identical(other.currentYPosition, currentYPosition) ||
                other.currentYPosition == currentYPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentYPosition);

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCurrentYPositionImplCopyWith<_$SetCurrentYPositionImpl> get copyWith =>
      __$$SetCurrentYPositionImplCopyWithImpl<_$SetCurrentYPositionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double positionYDelta) setPositionYDelta,
    required TResult Function(double initialYPosition) setInitialYPosition,
    required TResult Function(double currentYPosition) setCurrentYPosition,
    required TResult Function(Duration animationDuration) setAnimationDuration,
  }) {
    return setCurrentYPosition(currentYPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double positionYDelta)? setPositionYDelta,
    TResult? Function(double initialYPosition)? setInitialYPosition,
    TResult? Function(double currentYPosition)? setCurrentYPosition,
    TResult? Function(Duration animationDuration)? setAnimationDuration,
  }) {
    return setCurrentYPosition?.call(currentYPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double positionYDelta)? setPositionYDelta,
    TResult Function(double initialYPosition)? setInitialYPosition,
    TResult Function(double currentYPosition)? setCurrentYPosition,
    TResult Function(Duration animationDuration)? setAnimationDuration,
    required TResult orElse(),
  }) {
    if (setCurrentYPosition != null) {
      return setCurrentYPosition(currentYPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPositionYDelta value) setPositionYDelta,
    required TResult Function(_SetInitialYPosition value) setInitialYPosition,
    required TResult Function(_SetCurrentYPosition value) setCurrentYPosition,
    required TResult Function(_SetAnimationDuration value) setAnimationDuration,
  }) {
    return setCurrentYPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPositionYDelta value)? setPositionYDelta,
    TResult? Function(_SetInitialYPosition value)? setInitialYPosition,
    TResult? Function(_SetCurrentYPosition value)? setCurrentYPosition,
    TResult? Function(_SetAnimationDuration value)? setAnimationDuration,
  }) {
    return setCurrentYPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPositionYDelta value)? setPositionYDelta,
    TResult Function(_SetInitialYPosition value)? setInitialYPosition,
    TResult Function(_SetCurrentYPosition value)? setCurrentYPosition,
    TResult Function(_SetAnimationDuration value)? setAnimationDuration,
    required TResult orElse(),
  }) {
    if (setCurrentYPosition != null) {
      return setCurrentYPosition(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentYPosition implements ImagesViewerEvent {
  const factory _SetCurrentYPosition(final double currentYPosition) =
      _$SetCurrentYPositionImpl;

  double get currentYPosition;

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCurrentYPositionImplCopyWith<_$SetCurrentYPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetAnimationDurationImplCopyWith<$Res> {
  factory _$$SetAnimationDurationImplCopyWith(_$SetAnimationDurationImpl value,
          $Res Function(_$SetAnimationDurationImpl) then) =
      __$$SetAnimationDurationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration animationDuration});
}

/// @nodoc
class __$$SetAnimationDurationImplCopyWithImpl<$Res>
    extends _$ImagesViewerEventCopyWithImpl<$Res, _$SetAnimationDurationImpl>
    implements _$$SetAnimationDurationImplCopyWith<$Res> {
  __$$SetAnimationDurationImplCopyWithImpl(_$SetAnimationDurationImpl _value,
      $Res Function(_$SetAnimationDurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animationDuration = null,
  }) {
    return _then(_$SetAnimationDurationImpl(
      null == animationDuration
          ? _value.animationDuration
          : animationDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$SetAnimationDurationImpl implements _SetAnimationDuration {
  const _$SetAnimationDurationImpl(this.animationDuration);

  @override
  final Duration animationDuration;

  @override
  String toString() {
    return 'ImagesViewerEvent.setAnimationDuration(animationDuration: $animationDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAnimationDurationImpl &&
            (identical(other.animationDuration, animationDuration) ||
                other.animationDuration == animationDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, animationDuration);

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAnimationDurationImplCopyWith<_$SetAnimationDurationImpl>
      get copyWith =>
          __$$SetAnimationDurationImplCopyWithImpl<_$SetAnimationDurationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double positionYDelta) setPositionYDelta,
    required TResult Function(double initialYPosition) setInitialYPosition,
    required TResult Function(double currentYPosition) setCurrentYPosition,
    required TResult Function(Duration animationDuration) setAnimationDuration,
  }) {
    return setAnimationDuration(animationDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double positionYDelta)? setPositionYDelta,
    TResult? Function(double initialYPosition)? setInitialYPosition,
    TResult? Function(double currentYPosition)? setCurrentYPosition,
    TResult? Function(Duration animationDuration)? setAnimationDuration,
  }) {
    return setAnimationDuration?.call(animationDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double positionYDelta)? setPositionYDelta,
    TResult Function(double initialYPosition)? setInitialYPosition,
    TResult Function(double currentYPosition)? setCurrentYPosition,
    TResult Function(Duration animationDuration)? setAnimationDuration,
    required TResult orElse(),
  }) {
    if (setAnimationDuration != null) {
      return setAnimationDuration(animationDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPositionYDelta value) setPositionYDelta,
    required TResult Function(_SetInitialYPosition value) setInitialYPosition,
    required TResult Function(_SetCurrentYPosition value) setCurrentYPosition,
    required TResult Function(_SetAnimationDuration value) setAnimationDuration,
  }) {
    return setAnimationDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPositionYDelta value)? setPositionYDelta,
    TResult? Function(_SetInitialYPosition value)? setInitialYPosition,
    TResult? Function(_SetCurrentYPosition value)? setCurrentYPosition,
    TResult? Function(_SetAnimationDuration value)? setAnimationDuration,
  }) {
    return setAnimationDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPositionYDelta value)? setPositionYDelta,
    TResult Function(_SetInitialYPosition value)? setInitialYPosition,
    TResult Function(_SetCurrentYPosition value)? setCurrentYPosition,
    TResult Function(_SetAnimationDuration value)? setAnimationDuration,
    required TResult orElse(),
  }) {
    if (setAnimationDuration != null) {
      return setAnimationDuration(this);
    }
    return orElse();
  }
}

abstract class _SetAnimationDuration implements ImagesViewerEvent {
  const factory _SetAnimationDuration(final Duration animationDuration) =
      _$SetAnimationDurationImpl;

  Duration get animationDuration;

  /// Create a copy of ImagesViewerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetAnimationDurationImplCopyWith<_$SetAnimationDurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImagesViewerState {
  double get positionYDelta => throw _privateConstructorUsedError;
  double get initialYPosition => throw _privateConstructorUsedError;
  double get currentYPosition => throw _privateConstructorUsedError;
  Duration get animationDuration => throw _privateConstructorUsedError;

  /// Create a copy of ImagesViewerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesViewerStateCopyWith<ImagesViewerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesViewerStateCopyWith<$Res> {
  factory $ImagesViewerStateCopyWith(
          ImagesViewerState value, $Res Function(ImagesViewerState) then) =
      _$ImagesViewerStateCopyWithImpl<$Res, ImagesViewerState>;
  @useResult
  $Res call(
      {double positionYDelta,
      double initialYPosition,
      double currentYPosition,
      Duration animationDuration});
}

/// @nodoc
class _$ImagesViewerStateCopyWithImpl<$Res, $Val extends ImagesViewerState>
    implements $ImagesViewerStateCopyWith<$Res> {
  _$ImagesViewerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImagesViewerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionYDelta = null,
    Object? initialYPosition = null,
    Object? currentYPosition = null,
    Object? animationDuration = null,
  }) {
    return _then(_value.copyWith(
      positionYDelta: null == positionYDelta
          ? _value.positionYDelta
          : positionYDelta // ignore: cast_nullable_to_non_nullable
              as double,
      initialYPosition: null == initialYPosition
          ? _value.initialYPosition
          : initialYPosition // ignore: cast_nullable_to_non_nullable
              as double,
      currentYPosition: null == currentYPosition
          ? _value.currentYPosition
          : currentYPosition // ignore: cast_nullable_to_non_nullable
              as double,
      animationDuration: null == animationDuration
          ? _value.animationDuration
          : animationDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesViewerStateImplCopyWith<$Res>
    implements $ImagesViewerStateCopyWith<$Res> {
  factory _$$ImagesViewerStateImplCopyWith(_$ImagesViewerStateImpl value,
          $Res Function(_$ImagesViewerStateImpl) then) =
      __$$ImagesViewerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double positionYDelta,
      double initialYPosition,
      double currentYPosition,
      Duration animationDuration});
}

/// @nodoc
class __$$ImagesViewerStateImplCopyWithImpl<$Res>
    extends _$ImagesViewerStateCopyWithImpl<$Res, _$ImagesViewerStateImpl>
    implements _$$ImagesViewerStateImplCopyWith<$Res> {
  __$$ImagesViewerStateImplCopyWithImpl(_$ImagesViewerStateImpl _value,
      $Res Function(_$ImagesViewerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImagesViewerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionYDelta = null,
    Object? initialYPosition = null,
    Object? currentYPosition = null,
    Object? animationDuration = null,
  }) {
    return _then(_$ImagesViewerStateImpl(
      positionYDelta: null == positionYDelta
          ? _value.positionYDelta
          : positionYDelta // ignore: cast_nullable_to_non_nullable
              as double,
      initialYPosition: null == initialYPosition
          ? _value.initialYPosition
          : initialYPosition // ignore: cast_nullable_to_non_nullable
              as double,
      currentYPosition: null == currentYPosition
          ? _value.currentYPosition
          : currentYPosition // ignore: cast_nullable_to_non_nullable
              as double,
      animationDuration: null == animationDuration
          ? _value.animationDuration
          : animationDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$ImagesViewerStateImpl implements _ImagesViewerState {
  const _$ImagesViewerStateImpl(
      {this.positionYDelta = 0.0,
      this.initialYPosition = 0.0,
      this.currentYPosition = 0.0,
      this.animationDuration = Duration.zero});

  @override
  @JsonKey()
  final double positionYDelta;
  @override
  @JsonKey()
  final double initialYPosition;
  @override
  @JsonKey()
  final double currentYPosition;
  @override
  @JsonKey()
  final Duration animationDuration;

  @override
  String toString() {
    return 'ImagesViewerState(positionYDelta: $positionYDelta, initialYPosition: $initialYPosition, currentYPosition: $currentYPosition, animationDuration: $animationDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesViewerStateImpl &&
            (identical(other.positionYDelta, positionYDelta) ||
                other.positionYDelta == positionYDelta) &&
            (identical(other.initialYPosition, initialYPosition) ||
                other.initialYPosition == initialYPosition) &&
            (identical(other.currentYPosition, currentYPosition) ||
                other.currentYPosition == currentYPosition) &&
            (identical(other.animationDuration, animationDuration) ||
                other.animationDuration == animationDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, positionYDelta, initialYPosition,
      currentYPosition, animationDuration);

  /// Create a copy of ImagesViewerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesViewerStateImplCopyWith<_$ImagesViewerStateImpl> get copyWith =>
      __$$ImagesViewerStateImplCopyWithImpl<_$ImagesViewerStateImpl>(
          this, _$identity);
}

abstract class _ImagesViewerState implements ImagesViewerState {
  const factory _ImagesViewerState(
      {final double positionYDelta,
      final double initialYPosition,
      final double currentYPosition,
      final Duration animationDuration}) = _$ImagesViewerStateImpl;

  @override
  double get positionYDelta;
  @override
  double get initialYPosition;
  @override
  double get currentYPosition;
  @override
  Duration get animationDuration;

  /// Create a copy of ImagesViewerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesViewerStateImplCopyWith<_$ImagesViewerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
