part of 'admin_create_client_bloc.dart';

@freezed
class AdminCreateClientState with _$AdminCreateClientState {
  const factory AdminCreateClientState({
    @Default(false) bool isLoading,
    String? firstName,
    String? lastName,
    String? username,
    String? phoneNumber,
  }) = _AdminCreateClientState;

  const AdminCreateClientState._();

  bool get canProceed =>
      firstName.isNotNullAndEmpty &&
      (username.isNotNullAndEmpty || phoneNumber.isNotNullAndEmpty);

  Future<User> client({required IdGenerator idGenerator}) async {
    final int id = int.parse(idGenerator.generate());

    return User(
      id: id,
      firstName: firstName ?? '',
      lastName: lastName,
      username: username,
      phoneNumber: phoneNumber ?? '',
    );
  }
}
