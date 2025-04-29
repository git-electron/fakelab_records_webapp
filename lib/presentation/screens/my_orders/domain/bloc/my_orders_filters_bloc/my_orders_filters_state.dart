part of 'my_orders_filters_bloc.dart';

@freezed
class MyOrdersFiltersState with _$MyOrdersFiltersState {
  const factory MyOrdersFiltersState({
    OrderType? type,
    OrderStatus? status,
  }) = _MyOrdersFiltersState;

  const MyOrdersFiltersState._();

  List<Order> filteredOrders(List<Order>? orders) {
    final List<Order>? filtered = orders?.where((order) {
      bool isProperOrderType = true;
      bool isProperOrderStatus = true;

      if (type != null) {
        isProperOrderType = order.type == type;
      }
      if (status != null) {
        isProperOrderStatus = order.status == status;
      }

      return isProperOrderType && isProperOrderStatus;
    }).toList();

    return filtered ?? orders ?? [];
  }
}
