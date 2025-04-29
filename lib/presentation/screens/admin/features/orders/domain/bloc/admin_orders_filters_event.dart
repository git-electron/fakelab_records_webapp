part of 'admin_orders_filters_bloc.dart';

@freezed
class AdminOrdersFiltersEvent with _$AdminOrdersFiltersEvent {
  const factory AdminOrdersFiltersEvent.typeFilterChanged(OrderType? type) =
      _TypeFilterChanged;

  const factory AdminOrdersFiltersEvent.statusFilterChanged(
    OrderStatus? status,
  ) = _StatusFilterChanged;
}
