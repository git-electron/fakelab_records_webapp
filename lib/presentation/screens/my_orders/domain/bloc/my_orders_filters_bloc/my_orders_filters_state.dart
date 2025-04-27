part of 'my_orders_filters_bloc.dart';

@freezed
class MyOrdersFiltersState with _$MyOrdersFiltersState {
  const factory MyOrdersFiltersState({
    OrderType? type,
    OrderStatus? status,
  }) = _MyOrdersFiltersState;
}
