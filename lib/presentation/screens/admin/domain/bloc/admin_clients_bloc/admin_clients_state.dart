part of 'admin_clients_bloc.dart';

@freezed
class AdminClientsState with _$AdminClientsState {
  const factory AdminClientsState.loading() = _Loading;

  const factory AdminClientsState.loaded(List<User> clients) = _Loaded;

  const factory AdminClientsState.error(String? message) = _Error;

  const AdminClientsState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeWhen(
        loaded: (_) => true,
        orElse: () => false,
      );

  bool get hasClients => maybeWhen(
        loaded: (clients) => clients.isNotEmpty,
        orElse: () => false,
      );
  List<User>? get clients => whenOrNull(
        loaded: (clients) => clients,
      );

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );
  String? get message => whenOrNull(error: (message) => message);

  int get clientsCount => _clientsCount();

  int _clientsCount() {
    return maybeWhen(
      loaded: (clients) => clients.length,
      orElse: () => 0,
    );
  }
}
