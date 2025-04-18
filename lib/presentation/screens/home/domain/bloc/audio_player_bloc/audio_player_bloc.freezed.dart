// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudioPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) onSeek,
    required TResult Function() onSeekStart,
    required TResult Function(Duration to) onSeekEnd,
    required TResult Function(String fileName) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? onSeek,
    TResult? Function()? onSeekStart,
    TResult? Function(Duration to)? onSeekEnd,
    TResult? Function(String fileName)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? onSeek,
    TResult Function()? onSeekStart,
    TResult Function(Duration to)? onSeekEnd,
    TResult Function(String fileName)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSeek value) onSeek,
    required TResult Function(_OnSeekStart value) onSeekStart,
    required TResult Function(_OnSeekEnd value) onSeekEnd,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnSeek value)? onSeek,
    TResult? Function(_OnSeekStart value)? onSeekStart,
    TResult? Function(_OnSeekEnd value)? onSeekEnd,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSeek value)? onSeek,
    TResult Function(_OnSeekStart value)? onSeekStart,
    TResult Function(_OnSeekEnd value)? onSeekEnd,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerEventCopyWith<$Res> {
  factory $AudioPlayerEventCopyWith(
          AudioPlayerEvent value, $Res Function(AudioPlayerEvent) then) =
      _$AudioPlayerEventCopyWithImpl<$Res, AudioPlayerEvent>;
}

/// @nodoc
class _$AudioPlayerEventCopyWithImpl<$Res, $Val extends AudioPlayerEvent>
    implements $AudioPlayerEventCopyWith<$Res> {
  _$AudioPlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnSeekImplCopyWith<$Res> {
  factory _$$OnSeekImplCopyWith(
          _$OnSeekImpl value, $Res Function(_$OnSeekImpl) then) =
      __$$OnSeekImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$OnSeekImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$OnSeekImpl>
    implements _$$OnSeekImplCopyWith<$Res> {
  __$$OnSeekImplCopyWithImpl(
      _$OnSeekImpl _value, $Res Function(_$OnSeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnSeekImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$OnSeekImpl implements _OnSeek {
  const _$OnSeekImpl(this.value);

  @override
  final double value;

  @override
  String toString() {
    return 'AudioPlayerEvent.onSeek(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSeekImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSeekImplCopyWith<_$OnSeekImpl> get copyWith =>
      __$$OnSeekImplCopyWithImpl<_$OnSeekImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) onSeek,
    required TResult Function() onSeekStart,
    required TResult Function(Duration to) onSeekEnd,
    required TResult Function(String fileName) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return onSeek(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? onSeek,
    TResult? Function()? onSeekStart,
    TResult? Function(Duration to)? onSeekEnd,
    TResult? Function(String fileName)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return onSeek?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? onSeek,
    TResult Function()? onSeekStart,
    TResult Function(Duration to)? onSeekEnd,
    TResult Function(String fileName)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (onSeek != null) {
      return onSeek(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSeek value) onSeek,
    required TResult Function(_OnSeekStart value) onSeekStart,
    required TResult Function(_OnSeekEnd value) onSeekEnd,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return onSeek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnSeek value)? onSeek,
    TResult? Function(_OnSeekStart value)? onSeekStart,
    TResult? Function(_OnSeekEnd value)? onSeekEnd,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return onSeek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSeek value)? onSeek,
    TResult Function(_OnSeekStart value)? onSeekStart,
    TResult Function(_OnSeekEnd value)? onSeekEnd,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (onSeek != null) {
      return onSeek(this);
    }
    return orElse();
  }
}

abstract class _OnSeek implements AudioPlayerEvent {
  const factory _OnSeek(final double value) = _$OnSeekImpl;

  double get value;

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSeekImplCopyWith<_$OnSeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSeekStartImplCopyWith<$Res> {
  factory _$$OnSeekStartImplCopyWith(
          _$OnSeekStartImpl value, $Res Function(_$OnSeekStartImpl) then) =
      __$$OnSeekStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSeekStartImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$OnSeekStartImpl>
    implements _$$OnSeekStartImplCopyWith<$Res> {
  __$$OnSeekStartImplCopyWithImpl(
      _$OnSeekStartImpl _value, $Res Function(_$OnSeekStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSeekStartImpl implements _OnSeekStart {
  const _$OnSeekStartImpl();

  @override
  String toString() {
    return 'AudioPlayerEvent.onSeekStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSeekStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) onSeek,
    required TResult Function() onSeekStart,
    required TResult Function(Duration to) onSeekEnd,
    required TResult Function(String fileName) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return onSeekStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? onSeek,
    TResult? Function()? onSeekStart,
    TResult? Function(Duration to)? onSeekEnd,
    TResult? Function(String fileName)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return onSeekStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? onSeek,
    TResult Function()? onSeekStart,
    TResult Function(Duration to)? onSeekEnd,
    TResult Function(String fileName)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (onSeekStart != null) {
      return onSeekStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSeek value) onSeek,
    required TResult Function(_OnSeekStart value) onSeekStart,
    required TResult Function(_OnSeekEnd value) onSeekEnd,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return onSeekStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnSeek value)? onSeek,
    TResult? Function(_OnSeekStart value)? onSeekStart,
    TResult? Function(_OnSeekEnd value)? onSeekEnd,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return onSeekStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSeek value)? onSeek,
    TResult Function(_OnSeekStart value)? onSeekStart,
    TResult Function(_OnSeekEnd value)? onSeekEnd,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (onSeekStart != null) {
      return onSeekStart(this);
    }
    return orElse();
  }
}

abstract class _OnSeekStart implements AudioPlayerEvent {
  const factory _OnSeekStart() = _$OnSeekStartImpl;
}

/// @nodoc
abstract class _$$OnSeekEndImplCopyWith<$Res> {
  factory _$$OnSeekEndImplCopyWith(
          _$OnSeekEndImpl value, $Res Function(_$OnSeekEndImpl) then) =
      __$$OnSeekEndImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration to});
}

/// @nodoc
class __$$OnSeekEndImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$OnSeekEndImpl>
    implements _$$OnSeekEndImplCopyWith<$Res> {
  __$$OnSeekEndImplCopyWithImpl(
      _$OnSeekEndImpl _value, $Res Function(_$OnSeekEndImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
  }) {
    return _then(_$OnSeekEndImpl(
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$OnSeekEndImpl implements _OnSeekEnd {
  const _$OnSeekEndImpl(this.to);

  @override
  final Duration to;

  @override
  String toString() {
    return 'AudioPlayerEvent.onSeekEnd(to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSeekEndImpl &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, to);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSeekEndImplCopyWith<_$OnSeekEndImpl> get copyWith =>
      __$$OnSeekEndImplCopyWithImpl<_$OnSeekEndImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) onSeek,
    required TResult Function() onSeekStart,
    required TResult Function(Duration to) onSeekEnd,
    required TResult Function(String fileName) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return onSeekEnd(to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? onSeek,
    TResult? Function()? onSeekStart,
    TResult? Function(Duration to)? onSeekEnd,
    TResult? Function(String fileName)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return onSeekEnd?.call(to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? onSeek,
    TResult Function()? onSeekStart,
    TResult Function(Duration to)? onSeekEnd,
    TResult Function(String fileName)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (onSeekEnd != null) {
      return onSeekEnd(to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSeek value) onSeek,
    required TResult Function(_OnSeekStart value) onSeekStart,
    required TResult Function(_OnSeekEnd value) onSeekEnd,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return onSeekEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnSeek value)? onSeek,
    TResult? Function(_OnSeekStart value)? onSeekStart,
    TResult? Function(_OnSeekEnd value)? onSeekEnd,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return onSeekEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSeek value)? onSeek,
    TResult Function(_OnSeekStart value)? onSeekStart,
    TResult Function(_OnSeekEnd value)? onSeekEnd,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (onSeekEnd != null) {
      return onSeekEnd(this);
    }
    return orElse();
  }
}

abstract class _OnSeekEnd implements AudioPlayerEvent {
  const factory _OnSeekEnd(final Duration to) = _$OnSeekEndImpl;

  Duration get to;

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSeekEndImplCopyWith<_$OnSeekEndImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayButtonPressedImplCopyWith<$Res> {
  factory _$$PlayButtonPressedImplCopyWith(_$PlayButtonPressedImpl value,
          $Res Function(_$PlayButtonPressedImpl) then) =
      __$$PlayButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class __$$PlayButtonPressedImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$PlayButtonPressedImpl>
    implements _$$PlayButtonPressedImplCopyWith<$Res> {
  __$$PlayButtonPressedImplCopyWithImpl(_$PlayButtonPressedImpl _value,
      $Res Function(_$PlayButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
  }) {
    return _then(_$PlayButtonPressedImpl(
      null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayButtonPressedImpl implements _PlayButtonPressed {
  const _$PlayButtonPressedImpl(this.fileName);

  @override
  final String fileName;

  @override
  String toString() {
    return 'AudioPlayerEvent.playButtonPressed(fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayButtonPressedImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayButtonPressedImplCopyWith<_$PlayButtonPressedImpl> get copyWith =>
      __$$PlayButtonPressedImplCopyWithImpl<_$PlayButtonPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) onSeek,
    required TResult Function() onSeekStart,
    required TResult Function(Duration to) onSeekEnd,
    required TResult Function(String fileName) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return playButtonPressed(fileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? onSeek,
    TResult? Function()? onSeekStart,
    TResult? Function(Duration to)? onSeekEnd,
    TResult? Function(String fileName)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return playButtonPressed?.call(fileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? onSeek,
    TResult Function()? onSeekStart,
    TResult Function(Duration to)? onSeekEnd,
    TResult Function(String fileName)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (playButtonPressed != null) {
      return playButtonPressed(fileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSeek value) onSeek,
    required TResult Function(_OnSeekStart value) onSeekStart,
    required TResult Function(_OnSeekEnd value) onSeekEnd,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return playButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnSeek value)? onSeek,
    TResult? Function(_OnSeekStart value)? onSeekStart,
    TResult? Function(_OnSeekEnd value)? onSeekEnd,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return playButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSeek value)? onSeek,
    TResult Function(_OnSeekStart value)? onSeekStart,
    TResult Function(_OnSeekEnd value)? onSeekEnd,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (playButtonPressed != null) {
      return playButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _PlayButtonPressed implements AudioPlayerEvent {
  const factory _PlayButtonPressed(final String fileName) =
      _$PlayButtonPressedImpl;

  String get fileName;

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayButtonPressedImplCopyWith<_$PlayButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsPlayingStateChangedImplCopyWith<$Res> {
  factory _$$IsPlayingStateChangedImplCopyWith(
          _$IsPlayingStateChangedImpl value,
          $Res Function(_$IsPlayingStateChangedImpl) then) =
      __$$IsPlayingStateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPlaying});
}

/// @nodoc
class __$$IsPlayingStateChangedImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$IsPlayingStateChangedImpl>
    implements _$$IsPlayingStateChangedImplCopyWith<$Res> {
  __$$IsPlayingStateChangedImplCopyWithImpl(_$IsPlayingStateChangedImpl _value,
      $Res Function(_$IsPlayingStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
  }) {
    return _then(_$IsPlayingStateChangedImpl(
      null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsPlayingStateChangedImpl implements _IsPlayingStateChanged {
  const _$IsPlayingStateChangedImpl(this.isPlaying);

  @override
  final bool isPlaying;

  @override
  String toString() {
    return 'AudioPlayerEvent.isPlayingStateChanged(isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsPlayingStateChangedImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlaying);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsPlayingStateChangedImplCopyWith<_$IsPlayingStateChangedImpl>
      get copyWith => __$$IsPlayingStateChangedImplCopyWithImpl<
          _$IsPlayingStateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) onSeek,
    required TResult Function() onSeekStart,
    required TResult Function(Duration to) onSeekEnd,
    required TResult Function(String fileName) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return isPlayingStateChanged(isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? onSeek,
    TResult? Function()? onSeekStart,
    TResult? Function(Duration to)? onSeekEnd,
    TResult? Function(String fileName)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return isPlayingStateChanged?.call(isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? onSeek,
    TResult Function()? onSeekStart,
    TResult Function(Duration to)? onSeekEnd,
    TResult Function(String fileName)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (isPlayingStateChanged != null) {
      return isPlayingStateChanged(isPlaying);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSeek value) onSeek,
    required TResult Function(_OnSeekStart value) onSeekStart,
    required TResult Function(_OnSeekEnd value) onSeekEnd,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return isPlayingStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnSeek value)? onSeek,
    TResult? Function(_OnSeekStart value)? onSeekStart,
    TResult? Function(_OnSeekEnd value)? onSeekEnd,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return isPlayingStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSeek value)? onSeek,
    TResult Function(_OnSeekStart value)? onSeekStart,
    TResult Function(_OnSeekEnd value)? onSeekEnd,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (isPlayingStateChanged != null) {
      return isPlayingStateChanged(this);
    }
    return orElse();
  }
}

abstract class _IsPlayingStateChanged implements AudioPlayerEvent {
  const factory _IsPlayingStateChanged(final bool isPlaying) =
      _$IsPlayingStateChangedImpl;

  bool get isPlaying;

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsPlayingStateChangedImplCopyWith<_$IsPlayingStateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AudioPlayerState {
  bool get isPlaying => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  bool get isSeekInProgress => throw _privateConstructorUsedError;
  double get seekProgressValue => throw _privateConstructorUsedError;

  /// Create a copy of AudioPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioPlayerStateCopyWith<AudioPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerStateCopyWith<$Res> {
  factory $AudioPlayerStateCopyWith(
          AudioPlayerState value, $Res Function(AudioPlayerState) then) =
      _$AudioPlayerStateCopyWithImpl<$Res, AudioPlayerState>;
  @useResult
  $Res call(
      {bool isPlaying,
      String? fileName,
      bool isSeekInProgress,
      double seekProgressValue});
}

/// @nodoc
class _$AudioPlayerStateCopyWithImpl<$Res, $Val extends AudioPlayerState>
    implements $AudioPlayerStateCopyWith<$Res> {
  _$AudioPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? fileName = freezed,
    Object? isSeekInProgress = null,
    Object? seekProgressValue = null,
  }) {
    return _then(_value.copyWith(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeekInProgress: null == isSeekInProgress
          ? _value.isSeekInProgress
          : isSeekInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      seekProgressValue: null == seekProgressValue
          ? _value.seekProgressValue
          : seekProgressValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioPlayerStateImplCopyWith<$Res>
    implements $AudioPlayerStateCopyWith<$Res> {
  factory _$$AudioPlayerStateImplCopyWith(_$AudioPlayerStateImpl value,
          $Res Function(_$AudioPlayerStateImpl) then) =
      __$$AudioPlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPlaying,
      String? fileName,
      bool isSeekInProgress,
      double seekProgressValue});
}

/// @nodoc
class __$$AudioPlayerStateImplCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res, _$AudioPlayerStateImpl>
    implements _$$AudioPlayerStateImplCopyWith<$Res> {
  __$$AudioPlayerStateImplCopyWithImpl(_$AudioPlayerStateImpl _value,
      $Res Function(_$AudioPlayerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? fileName = freezed,
    Object? isSeekInProgress = null,
    Object? seekProgressValue = null,
  }) {
    return _then(_$AudioPlayerStateImpl(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeekInProgress: null == isSeekInProgress
          ? _value.isSeekInProgress
          : isSeekInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      seekProgressValue: null == seekProgressValue
          ? _value.seekProgressValue
          : seekProgressValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AudioPlayerStateImpl extends _AudioPlayerState {
  const _$AudioPlayerStateImpl(
      {this.isPlaying = false,
      this.fileName = null,
      this.isSeekInProgress = false,
      this.seekProgressValue = 0.0})
      : super._();

  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final String? fileName;
  @override
  @JsonKey()
  final bool isSeekInProgress;
  @override
  @JsonKey()
  final double seekProgressValue;

  @override
  String toString() {
    return 'AudioPlayerState(isPlaying: $isPlaying, fileName: $fileName, isSeekInProgress: $isSeekInProgress, seekProgressValue: $seekProgressValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayerStateImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.isSeekInProgress, isSeekInProgress) ||
                other.isSeekInProgress == isSeekInProgress) &&
            (identical(other.seekProgressValue, seekProgressValue) ||
                other.seekProgressValue == seekProgressValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isPlaying, fileName, isSeekInProgress, seekProgressValue);

  /// Create a copy of AudioPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPlayerStateImplCopyWith<_$AudioPlayerStateImpl> get copyWith =>
      __$$AudioPlayerStateImplCopyWithImpl<_$AudioPlayerStateImpl>(
          this, _$identity);
}

abstract class _AudioPlayerState extends AudioPlayerState {
  const factory _AudioPlayerState(
      {final bool isPlaying,
      final String? fileName,
      final bool isSeekInProgress,
      final double seekProgressValue}) = _$AudioPlayerStateImpl;
  const _AudioPlayerState._() : super._();

  @override
  bool get isPlaying;
  @override
  String? get fileName;
  @override
  bool get isSeekInProgress;
  @override
  double get seekProgressValue;

  /// Create a copy of AudioPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioPlayerStateImplCopyWith<_$AudioPlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
