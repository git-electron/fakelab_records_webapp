part of 'admin_clients_bloc.dart';

@freezed
class AdminClientsEvent with _$AdminClientsEvent {
  const factory AdminClientsEvent.setLoading() = _SetLoading;

  const factory AdminClientsEvent.setLoaded(List<User> clients) = _SetLoaded;

  const factory AdminClientsEvent.setError(String? message) = _SetError;

  const factory AdminClientsEvent.deleteClient(int clientId) =
      _DeleteClient;
}
