part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.setLoading() = _SetLoading;

  const factory OrdersEvent.setLoaded(List<Order> orders) = _SetLoaded;

  const factory OrdersEvent.setError(String? message) = _SetError;
}
