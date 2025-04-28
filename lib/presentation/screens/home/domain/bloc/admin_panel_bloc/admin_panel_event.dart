part of 'admin_panel_bloc.dart';

@freezed
class AdminPanelEvent with _$AdminPanelEvent {
  const factory AdminPanelEvent.setExpanded() = _SetExpanded;

  const factory AdminPanelEvent.setLoading() = _SetLoading;

  const factory AdminPanelEvent.setLoaded(List<Order> orders) = _SetLoaded;

  const factory AdminPanelEvent.setError(String? message) = _SetError;
}
