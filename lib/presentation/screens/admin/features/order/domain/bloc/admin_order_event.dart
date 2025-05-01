part of 'admin_order_bloc.dart';

@freezed
class AdminOrderEvent with _$AdminOrderEvent {
  const factory AdminOrderEvent.setLoading() = _SetLoading;

  const factory AdminOrderEvent.setLoaded(Order order) = _SetLoaded;

  const factory AdminOrderEvent.setError(String? message) = _SetError;

  const factory AdminOrderEvent.updateOrderStatus(
    OrderStatus status, {
    double? totalCost,
    String? message,
  }) = _UpdateOrderStatus;

  const factory AdminOrderEvent.updateOrderTotalCost(double? totalCost) =
      _UpdateOrderTotalCost;
}
