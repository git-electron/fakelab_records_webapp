// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_create_client_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminCreateClientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createButtonPressed,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createButtonPressed,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createButtonPressed,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateButtonPressed value) createButtonPressed,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateButtonPressed value)? createButtonPressed,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateButtonPressed value)? createButtonPressed,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreateClientEventCopyWith<$Res> {
  factory $AdminCreateClientEventCopyWith(AdminCreateClientEvent value,
          $Res Function(AdminCreateClientEvent) then) =
      _$AdminCreateClientEventCopyWithImpl<$Res, AdminCreateClientEvent>;
}

/// @nodoc
class _$AdminCreateClientEventCopyWithImpl<$Res,
        $Val extends AdminCreateClientEvent>
    implements $AdminCreateClientEventCopyWith<$Res> {
  _$AdminCreateClientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCreateClientEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateButtonPressedImplCopyWith<$Res> {
  factory _$$CreateButtonPressedImplCopyWith(_$CreateButtonPressedImpl value,
          $Res Function(_$CreateButtonPressedImpl) then) =
      __$$CreateButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateButtonPressedImplCopyWithImpl<$Res>
    extends _$AdminCreateClientEventCopyWithImpl<$Res,
        _$CreateButtonPressedImpl>
    implements _$$CreateButtonPressedImplCopyWith<$Res> {
  __$$CreateButtonPressedImplCopyWithImpl(_$CreateButtonPressedImpl _value,
      $Res Function(_$CreateButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateClientEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateButtonPressedImpl implements _CreateButtonPressed {
  const _$CreateButtonPressedImpl();

  @override
  String toString() {
    return 'AdminCreateClientEvent.createButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createButtonPressed,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) {
    return createButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createButtonPressed,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) {
    return createButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createButtonPressed,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (createButtonPressed != null) {
      return createButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateButtonPressed value) createButtonPressed,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return createButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateButtonPressed value)? createButtonPressed,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return createButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateButtonPressed value)? createButtonPressed,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (createButtonPressed != null) {
      return createButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _CreateButtonPressed implements AdminCreateClientEvent {
  const factory _CreateButtonPressed() = _$CreateButtonPressedImpl;
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
    extends _$AdminCreateClientEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateClientEvent
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
    return 'AdminCreateClientEvent.firstNameChanged(firstName: $firstName)';
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

  /// Create a copy of AdminCreateClientEvent
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
    required TResult Function() createButtonPressed,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createButtonPressed,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createButtonPressed,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
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
    required TResult Function(_CreateButtonPressed value) createButtonPressed,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateButtonPressed value)? createButtonPressed,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateButtonPressed value)? createButtonPressed,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements AdminCreateClientEvent {
  const factory _FirstNameChanged(final String firstName) =
      _$FirstNameChangedImpl;

  String get firstName;

  /// Create a copy of AdminCreateClientEvent
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
    extends _$AdminCreateClientEventCopyWithImpl<$Res, _$LastNameChangedImpl>
    implements _$$LastNameChangedImplCopyWith<$Res> {
  __$$LastNameChangedImplCopyWithImpl(
      _$LastNameChangedImpl _value, $Res Function(_$LastNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateClientEvent
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
    return 'AdminCreateClientEvent.lastNameChanged(lastName: $lastName)';
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

  /// Create a copy of AdminCreateClientEvent
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
    required TResult Function() createButtonPressed,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createButtonPressed,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createButtonPressed,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
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
    required TResult Function(_CreateButtonPressed value) createButtonPressed,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateButtonPressed value)? createButtonPressed,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateButtonPressed value)? createButtonPressed,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements AdminCreateClientEvent {
  const factory _LastNameChanged(final String lastName) = _$LastNameChangedImpl;

  String get lastName;

  /// Create a copy of AdminCreateClientEvent
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
    extends _$AdminCreateClientEventCopyWithImpl<$Res, _$UsernameChangedImpl>
    implements _$$UsernameChangedImplCopyWith<$Res> {
  __$$UsernameChangedImplCopyWithImpl(
      _$UsernameChangedImpl _value, $Res Function(_$UsernameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateClientEvent
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
    return 'AdminCreateClientEvent.usernameChanged(username: $username)';
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

  /// Create a copy of AdminCreateClientEvent
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
    required TResult Function() createButtonPressed,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createButtonPressed,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createButtonPressed,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
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
    required TResult Function(_CreateButtonPressed value) createButtonPressed,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateButtonPressed value)? createButtonPressed,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateButtonPressed value)? createButtonPressed,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements AdminCreateClientEvent {
  const factory _UsernameChanged(final String username) = _$UsernameChangedImpl;

  String get username;

  /// Create a copy of AdminCreateClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberChangedImplCopyWith<$Res> {
  factory _$$PhoneNumberChangedImplCopyWith(_$PhoneNumberChangedImpl value,
          $Res Function(_$PhoneNumberChangedImpl) then) =
      __$$PhoneNumberChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedImplCopyWithImpl<$Res>
    extends _$AdminCreateClientEventCopyWithImpl<$Res, _$PhoneNumberChangedImpl>
    implements _$$PhoneNumberChangedImplCopyWith<$Res> {
  __$$PhoneNumberChangedImplCopyWithImpl(_$PhoneNumberChangedImpl _value,
      $Res Function(_$PhoneNumberChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChangedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedImpl implements _PhoneNumberChanged {
  const _$PhoneNumberChangedImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AdminCreateClientEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of AdminCreateClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      __$$PhoneNumberChangedImplCopyWithImpl<_$PhoneNumberChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createButtonPressed,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createButtonPressed,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createButtonPressed,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateButtonPressed value) createButtonPressed,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateButtonPressed value)? createButtonPressed,
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateButtonPressed value)? createButtonPressed,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements AdminCreateClientEvent {
  const factory _PhoneNumberChanged(final String phoneNumber) =
      _$PhoneNumberChangedImpl;

  String get phoneNumber;

  /// Create a copy of AdminCreateClientEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminCreateClientState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Create a copy of AdminCreateClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCreateClientStateCopyWith<AdminCreateClientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreateClientStateCopyWith<$Res> {
  factory $AdminCreateClientStateCopyWith(AdminCreateClientState value,
          $Res Function(AdminCreateClientState) then) =
      _$AdminCreateClientStateCopyWithImpl<$Res, AdminCreateClientState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? firstName,
      String? lastName,
      String? username,
      String? phoneNumber});
}

/// @nodoc
class _$AdminCreateClientStateCopyWithImpl<$Res,
        $Val extends AdminCreateClientState>
    implements $AdminCreateClientStateCopyWith<$Res> {
  _$AdminCreateClientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCreateClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? phoneNumber = freezed,
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
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminCreateClientStateImplCopyWith<$Res>
    implements $AdminCreateClientStateCopyWith<$Res> {
  factory _$$AdminCreateClientStateImplCopyWith(
          _$AdminCreateClientStateImpl value,
          $Res Function(_$AdminCreateClientStateImpl) then) =
      __$$AdminCreateClientStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? firstName,
      String? lastName,
      String? username,
      String? phoneNumber});
}

/// @nodoc
class __$$AdminCreateClientStateImplCopyWithImpl<$Res>
    extends _$AdminCreateClientStateCopyWithImpl<$Res,
        _$AdminCreateClientStateImpl>
    implements _$$AdminCreateClientStateImplCopyWith<$Res> {
  __$$AdminCreateClientStateImplCopyWithImpl(
      _$AdminCreateClientStateImpl _value,
      $Res Function(_$AdminCreateClientStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCreateClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$AdminCreateClientStateImpl(
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
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdminCreateClientStateImpl extends _AdminCreateClientState {
  const _$AdminCreateClientStateImpl(
      {this.isLoading = false,
      this.firstName,
      this.lastName,
      this.username,
      this.phoneNumber})
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
  final String? phoneNumber;

  @override
  String toString() {
    return 'AdminCreateClientState(isLoading: $isLoading, firstName: $firstName, lastName: $lastName, username: $username, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCreateClientStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, firstName, lastName, username, phoneNumber);

  /// Create a copy of AdminCreateClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCreateClientStateImplCopyWith<_$AdminCreateClientStateImpl>
      get copyWith => __$$AdminCreateClientStateImplCopyWithImpl<
          _$AdminCreateClientStateImpl>(this, _$identity);
}

abstract class _AdminCreateClientState extends AdminCreateClientState {
  const factory _AdminCreateClientState(
      {final bool isLoading,
      final String? firstName,
      final String? lastName,
      final String? username,
      final String? phoneNumber}) = _$AdminCreateClientStateImpl;
  const _AdminCreateClientState._() : super._();

  @override
  bool get isLoading;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get username;
  @override
  String? get phoneNumber;

  /// Create a copy of AdminCreateClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminCreateClientStateImplCopyWith<_$AdminCreateClientStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
