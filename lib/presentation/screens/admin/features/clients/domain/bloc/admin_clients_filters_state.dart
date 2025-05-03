part of 'admin_clients_filters_bloc.dart';

@freezed
class AdminClientsFiltersState with _$AdminClientsFiltersState {
  const factory AdminClientsFiltersState({String? searchQuery}) =
      _AdminClientsFiltersState;

  const AdminClientsFiltersState._();

  List<User> filteredClients(List<User>? clients) {
    final List<User>? filtered = clients?.where((client) {
      bool isProperSearchQuery = true;

      if (searchQuery.isNotNullAndEmpty) {
        final bool isProperFullName =
            client.fullName.toLowerCase().contains(searchQuery!.toLowerCase());

        final bool isProperUsername = client.username
                ?.toLowerCase()
                .contains(searchQuery!.toLowerCase()) ??
            false;

        final bool isProperId = client.id
            .toString()
            .toLowerCase()
            .contains(searchQuery!.toLowerCase());

        isProperSearchQuery =
            isProperFullName || isProperUsername || isProperId;
      }

      return isProperSearchQuery;
    }).toList();

    return filtered ?? clients ?? [];
  }
}
