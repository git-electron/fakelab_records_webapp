part of 'my_orders_filters_bloc.dart';

@freezed
class MyOrdersFiltersEvent with _$MyOrdersFiltersEvent {
  const factory MyOrdersFiltersEvent.typeFilterChanged(
    OrderType? type,
  ) = _TypeFilterChanged;

  const factory MyOrdersFiltersEvent.statusFilterChanged(
    OrderStatus? status,
  ) = _StatusFilterChanged;
}
