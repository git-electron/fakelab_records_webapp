part of 'admin_edit_client_bloc.dart';

@freezed
class AdminEditClientState with _$AdminEditClientState {
  const factory AdminEditClientState({
    @Default(false) bool isLoading,
    String? firstName,
    String? lastName,
    String? username,
    String? phoneNumber,
  }) = _AdminEditClientState;

  const AdminEditClientState._();

  static AdminEditClientState fromClient(User client) {
    return _AdminEditClientState(
      firstName: client.firstName,
      lastName: client.lastName,
      username: client.username,
      phoneNumber: client.phoneNumber,
    );
  }

  bool get canProceed =>
      firstName.isNotNullAndEmpty &&
      (username.isNotNullAndEmpty || phoneNumber.isNotNullAndEmpty);

  Future<User> updatedClient(User client) async {
    return client.copyWith(
      firstName: firstName ?? client.firstName,
      lastName: lastName ?? client.lastName,
      username: username ?? client.username,
      phoneNumber: phoneNumber != null
          ? phoneNumberFormatter.unmaskText(phoneNumber!)
          : client.phoneNumber,
    );
  }
}
