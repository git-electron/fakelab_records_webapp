part of 'admin_panel_bloc.dart';

@freezed
class AdminPanelEvent with _$AdminPanelEvent {
  const factory AdminPanelEvent.setExpanded() = _SetExpanded;

  const factory AdminPanelEvent.setLoading() = _SetLoading;

  const factory AdminPanelEvent.setLoaded({
    required List<Order> orders,
    required List<User> clients,
  }) = _SetLoaded;

  const factory AdminPanelEvent.setError(String? message) = _SetError;
}
