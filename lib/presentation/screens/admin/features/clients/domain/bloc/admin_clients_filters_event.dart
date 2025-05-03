part of 'admin_clients_filters_bloc.dart';

@freezed
class AdminClientsFiltersEvent with _$AdminClientsFiltersEvent {
  const factory AdminClientsFiltersEvent.searchQueryChanged(
    String? query,
  ) = _SearchQueryChanged;
}
