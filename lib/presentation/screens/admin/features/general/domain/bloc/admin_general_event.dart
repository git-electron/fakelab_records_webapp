part of 'admin_general_bloc.dart';

@freezed
class AdminGeneralEvent with _$AdminGeneralEvent {
  const factory AdminGeneralEvent.setLoading() = _SetLoading;

  const factory AdminGeneralEvent.setLoaded(List<Order> orders) = _SetLoaded;

  const factory AdminGeneralEvent.setError(String? message) = _SetError;
}
