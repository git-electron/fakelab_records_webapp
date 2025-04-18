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
    required TResult Function(double value) seek,
    required TResult Function() seekStart,
    required TResult Function(Duration to) seekEnd,
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String filePath) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? seek,
    TResult? Function()? seekStart,
    TResult? Function(Duration to)? seekEnd,
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String filePath)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? seek,
    TResult Function()? seekStart,
    TResult Function(Duration to)? seekEnd,
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String filePath)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Seek value) seek,
    required TResult Function(_SeekStart value) seekStart,
    required TResult Function(_SeekEnd value) seekEnd,
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SeekStart value)? seekStart,
    TResult? Function(_SeekEnd value)? seekEnd,
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Seek value)? seek,
    TResult Function(_SeekStart value)? seekStart,
    TResult Function(_SeekEnd value)? seekEnd,
    TResult Function(_SetLoading value)? setLoading,
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
abstract class _$$SeekImplCopyWith<$Res> {
  factory _$$SeekImplCopyWith(
          _$SeekImpl value, $Res Function(_$SeekImpl) then) =
      __$$SeekImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$SeekImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$SeekImpl>
    implements _$$SeekImplCopyWith<$Res> {
  __$$SeekImplCopyWithImpl(_$SeekImpl _value, $Res Function(_$SeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SeekImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SeekImpl implements _Seek {
  const _$SeekImpl(this.value);

  @override
  final double value;

  @override
  String toString() {
    return 'AudioPlayerEvent.seek(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeekImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeekImplCopyWith<_$SeekImpl> get copyWith =>
      __$$SeekImplCopyWithImpl<_$SeekImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) seek,
    required TResult Function() seekStart,
    required TResult Function(Duration to) seekEnd,
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String filePath) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return seek(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? seek,
    TResult? Function()? seekStart,
    TResult? Function(Duration to)? seekEnd,
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String filePath)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return seek?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? seek,
    TResult Function()? seekStart,
    TResult Function(Duration to)? seekEnd,
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String filePath)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (seek != null) {
      return seek(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Seek value) seek,
    required TResult Function(_SeekStart value) seekStart,
    required TResult Function(_SeekEnd value) seekEnd,
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return seek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SeekStart value)? seekStart,
    TResult? Function(_SeekEnd value)? seekEnd,
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return seek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Seek value)? seek,
    TResult Function(_SeekStart value)? seekStart,
    TResult Function(_SeekEnd value)? seekEnd,
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (seek != null) {
      return seek(this);
    }
    return orElse();
  }
}

abstract class _Seek implements AudioPlayerEvent {
  const factory _Seek(final double value) = _$SeekImpl;

  double get value;

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeekImplCopyWith<_$SeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SeekStartImplCopyWith<$Res> {
  factory _$$SeekStartImplCopyWith(
          _$SeekStartImpl value, $Res Function(_$SeekStartImpl) then) =
      __$$SeekStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SeekStartImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$SeekStartImpl>
    implements _$$SeekStartImplCopyWith<$Res> {
  __$$SeekStartImplCopyWithImpl(
      _$SeekStartImpl _value, $Res Function(_$SeekStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SeekStartImpl implements _SeekStart {
  const _$SeekStartImpl();

  @override
  String toString() {
    return 'AudioPlayerEvent.seekStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SeekStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) seek,
    required TResult Function() seekStart,
    required TResult Function(Duration to) seekEnd,
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String filePath) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return seekStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? seek,
    TResult? Function()? seekStart,
    TResult? Function(Duration to)? seekEnd,
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String filePath)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return seekStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? seek,
    TResult Function()? seekStart,
    TResult Function(Duration to)? seekEnd,
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String filePath)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (seekStart != null) {
      return seekStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Seek value) seek,
    required TResult Function(_SeekStart value) seekStart,
    required TResult Function(_SeekEnd value) seekEnd,
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return seekStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SeekStart value)? seekStart,
    TResult? Function(_SeekEnd value)? seekEnd,
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return seekStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Seek value)? seek,
    TResult Function(_SeekStart value)? seekStart,
    TResult Function(_SeekEnd value)? seekEnd,
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (seekStart != null) {
      return seekStart(this);
    }
    return orElse();
  }
}

abstract class _SeekStart implements AudioPlayerEvent {
  const factory _SeekStart() = _$SeekStartImpl;
}

/// @nodoc
abstract class _$$SeekEndImplCopyWith<$Res> {
  factory _$$SeekEndImplCopyWith(
          _$SeekEndImpl value, $Res Function(_$SeekEndImpl) then) =
      __$$SeekEndImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration to});
}

/// @nodoc
class __$$SeekEndImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$SeekEndImpl>
    implements _$$SeekEndImplCopyWith<$Res> {
  __$$SeekEndImplCopyWithImpl(
      _$SeekEndImpl _value, $Res Function(_$SeekEndImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
  }) {
    return _then(_$SeekEndImpl(
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$SeekEndImpl implements _SeekEnd {
  const _$SeekEndImpl(this.to);

  @override
  final Duration to;

  @override
  String toString() {
    return 'AudioPlayerEvent.seekEnd(to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeekEndImpl &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, to);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeekEndImplCopyWith<_$SeekEndImpl> get copyWith =>
      __$$SeekEndImplCopyWithImpl<_$SeekEndImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) seek,
    required TResult Function() seekStart,
    required TResult Function(Duration to) seekEnd,
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String filePath) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return seekEnd(to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? seek,
    TResult? Function()? seekStart,
    TResult? Function(Duration to)? seekEnd,
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String filePath)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return seekEnd?.call(to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? seek,
    TResult Function()? seekStart,
    TResult Function(Duration to)? seekEnd,
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String filePath)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (seekEnd != null) {
      return seekEnd(to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Seek value) seek,
    required TResult Function(_SeekStart value) seekStart,
    required TResult Function(_SeekEnd value) seekEnd,
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return seekEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SeekStart value)? seekStart,
    TResult? Function(_SeekEnd value)? seekEnd,
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return seekEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Seek value)? seek,
    TResult Function(_SeekStart value)? seekStart,
    TResult Function(_SeekEnd value)? seekEnd,
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (seekEnd != null) {
      return seekEnd(this);
    }
    return orElse();
  }
}

abstract class _SeekEnd implements AudioPlayerEvent {
  const factory _SeekEnd(final Duration to) = _$SeekEndImpl;

  Duration get to;

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeekEndImplCopyWith<_$SeekEndImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetLoadingImplCopyWith<$Res> {
  factory _$$SetLoadingImplCopyWith(
          _$SetLoadingImpl value, $Res Function(_$SetLoadingImpl) then) =
      __$$SetLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$SetLoadingImplCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res, _$SetLoadingImpl>
    implements _$$SetLoadingImplCopyWith<$Res> {
  __$$SetLoadingImplCopyWithImpl(
      _$SetLoadingImpl _value, $Res Function(_$SetLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$SetLoadingImpl(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetLoadingImpl implements _SetLoading {
  const _$SetLoadingImpl(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AudioPlayerEvent.setLoading(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLoadingImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLoadingImplCopyWith<_$SetLoadingImpl> get copyWith =>
      __$$SetLoadingImplCopyWithImpl<_$SetLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) seek,
    required TResult Function() seekStart,
    required TResult Function(Duration to) seekEnd,
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String filePath) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return setLoading(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? seek,
    TResult? Function()? seekStart,
    TResult? Function(Duration to)? seekEnd,
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String filePath)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return setLoading?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? seek,
    TResult Function()? seekStart,
    TResult Function(Duration to)? seekEnd,
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String filePath)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Seek value) seek,
    required TResult Function(_SeekStart value) seekStart,
    required TResult Function(_SeekEnd value) seekEnd,
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return setLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SeekStart value)? seekStart,
    TResult? Function(_SeekEnd value)? seekEnd,
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return setLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Seek value)? seek,
    TResult Function(_SeekStart value)? seekStart,
    TResult Function(_SeekEnd value)? seekEnd,
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_PlayButtonPressed value)? playButtonPressed,
    TResult Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading(this);
    }
    return orElse();
  }
}

abstract class _SetLoading implements AudioPlayerEvent {
  const factory _SetLoading(final bool isLoading) = _$SetLoadingImpl;

  bool get isLoading;

  /// Create a copy of AudioPlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLoadingImplCopyWith<_$SetLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayButtonPressedImplCopyWith<$Res> {
  factory _$$PlayButtonPressedImplCopyWith(_$PlayButtonPressedImpl value,
          $Res Function(_$PlayButtonPressedImpl) then) =
      __$$PlayButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filePath});
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
    Object? filePath = null,
  }) {
    return _then(_$PlayButtonPressedImpl(
      null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayButtonPressedImpl implements _PlayButtonPressed {
  const _$PlayButtonPressedImpl(this.filePath);

  @override
  final String filePath;

  @override
  String toString() {
    return 'AudioPlayerEvent.playButtonPressed(filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayButtonPressedImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

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
    required TResult Function(double value) seek,
    required TResult Function() seekStart,
    required TResult Function(Duration to) seekEnd,
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String filePath) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return playButtonPressed(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? seek,
    TResult? Function()? seekStart,
    TResult? Function(Duration to)? seekEnd,
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String filePath)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return playButtonPressed?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? seek,
    TResult Function()? seekStart,
    TResult Function(Duration to)? seekEnd,
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String filePath)? playButtonPressed,
    TResult Function(bool isPlaying)? isPlayingStateChanged,
    required TResult orElse(),
  }) {
    if (playButtonPressed != null) {
      return playButtonPressed(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Seek value) seek,
    required TResult Function(_SeekStart value) seekStart,
    required TResult Function(_SeekEnd value) seekEnd,
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return playButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SeekStart value)? seekStart,
    TResult? Function(_SeekEnd value)? seekEnd,
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return playButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Seek value)? seek,
    TResult Function(_SeekStart value)? seekStart,
    TResult Function(_SeekEnd value)? seekEnd,
    TResult Function(_SetLoading value)? setLoading,
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
  const factory _PlayButtonPressed(final String filePath) =
      _$PlayButtonPressedImpl;

  String get filePath;

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
    required TResult Function(double value) seek,
    required TResult Function() seekStart,
    required TResult Function(Duration to) seekEnd,
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String filePath) playButtonPressed,
    required TResult Function(bool isPlaying) isPlayingStateChanged,
  }) {
    return isPlayingStateChanged(isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? seek,
    TResult? Function()? seekStart,
    TResult? Function(Duration to)? seekEnd,
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String filePath)? playButtonPressed,
    TResult? Function(bool isPlaying)? isPlayingStateChanged,
  }) {
    return isPlayingStateChanged?.call(isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? seek,
    TResult Function()? seekStart,
    TResult Function(Duration to)? seekEnd,
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String filePath)? playButtonPressed,
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
    required TResult Function(_Seek value) seek,
    required TResult Function(_SeekStart value) seekStart,
    required TResult Function(_SeekEnd value) seekEnd,
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_PlayButtonPressed value) playButtonPressed,
    required TResult Function(_IsPlayingStateChanged value)
        isPlayingStateChanged,
  }) {
    return isPlayingStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Seek value)? seek,
    TResult? Function(_SeekStart value)? seekStart,
    TResult? Function(_SeekEnd value)? seekEnd,
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_PlayButtonPressed value)? playButtonPressed,
    TResult? Function(_IsPlayingStateChanged value)? isPlayingStateChanged,
  }) {
    return isPlayingStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Seek value)? seek,
    TResult Function(_SeekStart value)? seekStart,
    TResult Function(_SeekEnd value)? seekEnd,
    TResult Function(_SetLoading value)? setLoading,
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
  String? get filePath => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
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
      String? filePath,
      bool isLoading,
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
    Object? filePath = freezed,
    Object? isLoading = null,
    Object? isSeekInProgress = null,
    Object? seekProgressValue = null,
  }) {
    return _then(_value.copyWith(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      String? filePath,
      bool isLoading,
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
    Object? filePath = freezed,
    Object? isLoading = null,
    Object? isSeekInProgress = null,
    Object? seekProgressValue = null,
  }) {
    return _then(_$AudioPlayerStateImpl(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      this.filePath = null,
      this.isLoading = false,
      this.isSeekInProgress = false,
      this.seekProgressValue = 0.0})
      : super._();

  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final String? filePath;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSeekInProgress;
  @override
  @JsonKey()
  final double seekProgressValue;

  @override
  String toString() {
    return 'AudioPlayerState(isPlaying: $isPlaying, filePath: $filePath, isLoading: $isLoading, isSeekInProgress: $isSeekInProgress, seekProgressValue: $seekProgressValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayerStateImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSeekInProgress, isSeekInProgress) ||
                other.isSeekInProgress == isSeekInProgress) &&
            (identical(other.seekProgressValue, seekProgressValue) ||
                other.seekProgressValue == seekProgressValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlaying, filePath, isLoading,
      isSeekInProgress, seekProgressValue);

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
      final String? filePath,
      final bool isLoading,
      final bool isSeekInProgress,
      final double seekProgressValue}) = _$AudioPlayerStateImpl;
  const _AudioPlayerState._() : super._();

  @override
  bool get isPlaying;
  @override
  String? get filePath;
  @override
  bool get isLoading;
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
