part of 'admin_orders_bloc.dart';

@freezed
class AdminOrdersEvent with _$AdminOrdersEvent {
  const factory AdminOrdersEvent.setLoading() = _SetLoading;

  const factory AdminOrdersEvent.setLoaded(List<Order> orders) = _SetLoaded;

  const factory AdminOrdersEvent.setError(String? message) = _SetError;
}
