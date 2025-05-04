part of 'admin_edit_client_bloc.dart';

@freezed
class AdminEditClientEvent with _$AdminEditClientEvent {
  const factory AdminEditClientEvent.confirmButtonPressed() =
      _ConfirmButtonPressed;

  const factory AdminEditClientEvent.deleteButtonPressed() =
      _DeleteButtonPressed;

  const factory AdminEditClientEvent.firstNameChanged(
    String firstName,
  ) = _FirstNameChanged;

  const factory AdminEditClientEvent.lastNameChanged(
    String lastName,
  ) = _LastNameChanged;

  const factory AdminEditClientEvent.usernameChanged(
    String username,
  ) = _UsernameChanged;

  const factory AdminEditClientEvent.phoneNumberChanged(
    String phoneNumber,
  ) = _PhoneNumberChanged;
}
