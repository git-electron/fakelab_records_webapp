part of 'admin_create_client_bloc.dart';

@freezed
class AdminCreateClientEvent with _$AdminCreateClientEvent {
  const factory AdminCreateClientEvent.createButtonPressed() =
      _CreateButtonPressed;

  const factory AdminCreateClientEvent.firstNameChanged(
    String firstName,
  ) = _FirstNameChanged;

  const factory AdminCreateClientEvent.lastNameChanged(
    String lastName,
  ) = _LastNameChanged;

  const factory AdminCreateClientEvent.usernameChanged(
    String username,
  ) = _UsernameChanged;

  const factory AdminCreateClientEvent.phoneNumberChanged(
    String phoneNumber,
  ) = _PhoneNumberChanged;
}
