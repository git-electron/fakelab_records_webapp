// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_create_staff_member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminCreateStaffMemberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String? fileUrl) avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String? fileUrl)? avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String? fileUrl)? avatarChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreateStaffMemberEventCopyWith<$Res> {
  factory $AdminCreateStaffMemberEventCopyWith(
          AdminCreateStaffMemberEvent value,
          $Res Function(AdminCreateStaffMemberEvent) then) =
      _$AdminCreateStaffMemberEventCopyWithImpl<$Res,
          AdminCreateStaffMemberEvent>;
}

/// @nodoc
class _$AdminCreateStaffMemberEventCopyWithImpl<$Res,
        $Val extends AdminCreateStaffMemberEvent>
    implements $AdminCreateStaffMemberEventCopyWith<$Res> {
  _$AdminCreateStaffMemberEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$AdminCreateStaffMemberEventCopyWithImpl<$Res, _$SetLoadingImpl>
    implements _$$SetLoadingImplCopyWith<$Res> {
  __$$SetLoadingImplCopyWithImpl(
      _$SetLoadingImpl _value, $Res Function(_$SetLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateStaffMemberEvent
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
    return 'AdminCreateStaffMemberEvent.setLoading(isLoading: $isLoading)';
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

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLoadingImplCopyWith<_$SetLoadingImpl> get copyWith =>
      __$$SetLoadingImplCopyWithImpl<_$SetLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String? fileUrl) avatarChanged,
  }) {
    return setLoading(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String? fileUrl)? avatarChanged,
  }) {
    return setLoading?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String? fileUrl)? avatarChanged,
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
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
  }) {
    return setLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
  }) {
    return setLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading(this);
    }
    return orElse();
  }
}

abstract class _SetLoading implements AdminCreateStaffMemberEvent {
  const factory _SetLoading(final bool isLoading) = _$SetLoadingImpl;

  bool get isLoading;

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLoadingImplCopyWith<_$SetLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(_$FirstNameChangedImpl value,
          $Res Function(_$FirstNameChangedImpl) then) =
      __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$AdminCreateStaffMemberEventCopyWithImpl<$Res,
        _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$FirstNameChangedImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements _FirstNameChanged {
  const _$FirstNameChangedImpl(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'AdminCreateStaffMemberEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String? fileUrl) avatarChanged,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String? fileUrl)? avatarChanged,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String? fileUrl)? avatarChanged,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements AdminCreateStaffMemberEvent {
  const factory _FirstNameChanged(final String firstName) =
      _$FirstNameChangedImpl;

  String get firstName;

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastNameChangedImplCopyWith<$Res> {
  factory _$$LastNameChangedImplCopyWith(_$LastNameChangedImpl value,
          $Res Function(_$LastNameChangedImpl) then) =
      __$$LastNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$LastNameChangedImplCopyWithImpl<$Res>
    extends _$AdminCreateStaffMemberEventCopyWithImpl<$Res,
        _$LastNameChangedImpl> implements _$$LastNameChangedImplCopyWith<$Res> {
  __$$LastNameChangedImplCopyWithImpl(
      _$LastNameChangedImpl _value, $Res Function(_$LastNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$LastNameChangedImpl(
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChangedImpl implements _LastNameChanged {
  const _$LastNameChangedImpl(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'AdminCreateStaffMemberEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameChangedImpl &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      __$$LastNameChangedImplCopyWithImpl<_$LastNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String? fileUrl) avatarChanged,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String? fileUrl)? avatarChanged,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String? fileUrl)? avatarChanged,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements AdminCreateStaffMemberEvent {
  const factory _LastNameChanged(final String lastName) = _$LastNameChangedImpl;

  String get lastName;

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameChangedImplCopyWith<$Res> {
  factory _$$UsernameChangedImplCopyWith(_$UsernameChangedImpl value,
          $Res Function(_$UsernameChangedImpl) then) =
      __$$UsernameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$UsernameChangedImplCopyWithImpl<$Res>
    extends _$AdminCreateStaffMemberEventCopyWithImpl<$Res,
        _$UsernameChangedImpl> implements _$$UsernameChangedImplCopyWith<$Res> {
  __$$UsernameChangedImplCopyWithImpl(
      _$UsernameChangedImpl _value, $Res Function(_$UsernameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$UsernameChangedImpl(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChangedImpl implements _UsernameChanged {
  const _$UsernameChangedImpl(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'AdminCreateStaffMemberEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChangedImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      __$$UsernameChangedImplCopyWithImpl<_$UsernameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String? fileUrl) avatarChanged,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String? fileUrl)? avatarChanged,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String? fileUrl)? avatarChanged,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements AdminCreateStaffMemberEvent {
  const factory _UsernameChanged(final String username) = _$UsernameChangedImpl;

  String get username;

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AvatarChangedImplCopyWith<$Res> {
  factory _$$AvatarChangedImplCopyWith(
          _$AvatarChangedImpl value, $Res Function(_$AvatarChangedImpl) then) =
      __$$AvatarChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? fileUrl});
}

/// @nodoc
class __$$AvatarChangedImplCopyWithImpl<$Res>
    extends _$AdminCreateStaffMemberEventCopyWithImpl<$Res, _$AvatarChangedImpl>
    implements _$$AvatarChangedImplCopyWith<$Res> {
  __$$AvatarChangedImplCopyWithImpl(
      _$AvatarChangedImpl _value, $Res Function(_$AvatarChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = freezed,
  }) {
    return _then(_$AvatarChangedImpl(
      freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AvatarChangedImpl implements _AvatarChanged {
  const _$AvatarChangedImpl(this.fileUrl);

  @override
  final String? fileUrl;

  @override
  String toString() {
    return 'AdminCreateStaffMemberEvent.avatarChanged(fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarChangedImpl &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileUrl);

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarChangedImplCopyWith<_$AvatarChangedImpl> get copyWith =>
      __$$AvatarChangedImplCopyWithImpl<_$AvatarChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) setLoading,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String? fileUrl) avatarChanged,
  }) {
    return avatarChanged(fileUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? setLoading,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String? fileUrl)? avatarChanged,
  }) {
    return avatarChanged?.call(fileUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? setLoading,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String? fileUrl)? avatarChanged,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(fileUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_AvatarChanged value) avatarChanged,
  }) {
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_AvatarChanged value)? avatarChanged,
  }) {
    return avatarChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_AvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(this);
    }
    return orElse();
  }
}

abstract class _AvatarChanged implements AdminCreateStaffMemberEvent {
  const factory _AvatarChanged(final String? fileUrl) = _$AvatarChangedImpl;

  String? get fileUrl;

  /// Create a copy of AdminCreateStaffMemberEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvatarChangedImplCopyWith<_$AvatarChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminCreateStaffMemberState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get avatarFileUrl => throw _privateConstructorUsedError;

  /// Create a copy of AdminCreateStaffMemberState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCreateStaffMemberStateCopyWith<AdminCreateStaffMemberState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreateStaffMemberStateCopyWith<$Res> {
  factory $AdminCreateStaffMemberStateCopyWith(
          AdminCreateStaffMemberState value,
          $Res Function(AdminCreateStaffMemberState) then) =
      _$AdminCreateStaffMemberStateCopyWithImpl<$Res,
          AdminCreateStaffMemberState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? firstName,
      String? lastName,
      String? username,
      String? avatarFileUrl});
}

/// @nodoc
class _$AdminCreateStaffMemberStateCopyWithImpl<$Res,
        $Val extends AdminCreateStaffMemberState>
    implements $AdminCreateStaffMemberStateCopyWith<$Res> {
  _$AdminCreateStaffMemberStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCreateStaffMemberState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? avatarFileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarFileUrl: freezed == avatarFileUrl
          ? _value.avatarFileUrl
          : avatarFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminCreateStaffMemberStateImplCopyWith<$Res>
    implements $AdminCreateStaffMemberStateCopyWith<$Res> {
  factory _$$AdminCreateStaffMemberStateImplCopyWith(
          _$AdminCreateStaffMemberStateImpl value,
          $Res Function(_$AdminCreateStaffMemberStateImpl) then) =
      __$$AdminCreateStaffMemberStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? firstName,
      String? lastName,
      String? username,
      String? avatarFileUrl});
}

/// @nodoc
class __$$AdminCreateStaffMemberStateImplCopyWithImpl<$Res>
    extends _$AdminCreateStaffMemberStateCopyWithImpl<$Res,
        _$AdminCreateStaffMemberStateImpl>
    implements _$$AdminCreateStaffMemberStateImplCopyWith<$Res> {
  __$$AdminCreateStaffMemberStateImplCopyWithImpl(
      _$AdminCreateStaffMemberStateImpl _value,
      $Res Function(_$AdminCreateStaffMemberStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateStaffMemberState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? avatarFileUrl = freezed,
  }) {
    return _then(_$AdminCreateStaffMemberStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarFileUrl: freezed == avatarFileUrl
          ? _value.avatarFileUrl
          : avatarFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdminCreateStaffMemberStateImpl extends _AdminCreateStaffMemberState {
  const _$AdminCreateStaffMemberStateImpl(
      {this.isLoading = false,
      this.firstName,
      this.lastName,
      this.username,
      this.avatarFileUrl})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? username;
  @override
  final String? avatarFileUrl;

  @override
  String toString() {
    return 'AdminCreateStaffMemberState(isLoading: $isLoading, firstName: $firstName, lastName: $lastName, username: $username, avatarFileUrl: $avatarFileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCreateStaffMemberStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatarFileUrl, avatarFileUrl) ||
                other.avatarFileUrl == avatarFileUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, firstName, lastName, username, avatarFileUrl);

  /// Create a copy of AdminCreateStaffMemberState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCreateStaffMemberStateImplCopyWith<_$AdminCreateStaffMemberStateImpl>
      get copyWith => __$$AdminCreateStaffMemberStateImplCopyWithImpl<
          _$AdminCreateStaffMemberStateImpl>(this, _$identity);
}

abstract class _AdminCreateStaffMemberState
    extends AdminCreateStaffMemberState {
  const factory _AdminCreateStaffMemberState(
      {final bool isLoading,
      final String? firstName,
      final String? lastName,
      final String? username,
      final String? avatarFileUrl}) = _$AdminCreateStaffMemberStateImpl;
  const _AdminCreateStaffMemberState._() : super._();

  @override
  bool get isLoading;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get username;
  @override
  String? get avatarFileUrl;

  /// Create a copy of AdminCreateStaffMemberState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminCreateStaffMemberStateImplCopyWith<_$AdminCreateStaffMemberStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
