part of 'admin_orders_filters_bloc.dart';

@freezed
class AdminOrdersFiltersState with _$AdminOrdersFiltersState {
  const factory AdminOrdersFiltersState({
    OrderType? type,
    OrderStatus? status,
    String? searchQuery,
  }) = _AdminOrdersFiltersState;

  const AdminOrdersFiltersState._();

  List<Order> filteredOrders(List<Order>? orders) {
    final List<Order>? filtered = orders?.where((order) {
      bool isProperOrderType = true;
      bool isProperOrderStatus = true;
      bool isProperSearchQuery = true;

      if (type != null) {
        isProperOrderType = order.type == type;
      }
      if (status != null) {
        isProperOrderStatus = order.status == status;
      }
      if (searchQuery.isNotNullAndEmpty) {
        final bool isProperCustomerFullName = order.customer.fullName
            .toLowerCase()
            .contains(searchQuery!.toLowerCase());

        final bool isProperCustomerUsername = order.customer.username
                ?.toLowerCase()
                .contains(searchQuery!.toLowerCase()) ??
            false;

        final bool isProperOrderId = order.id.contains(searchQuery!) ||
            order.idShort.contains(searchQuery!) ||
            '#${order.id}'.contains(searchQuery!);

        final bool isProperCustomerId =
            order.customer.id.toString().contains(searchQuery!);

        isProperSearchQuery = isProperCustomerFullName ||
            isProperCustomerUsername ||
            isProperOrderId ||
            isProperCustomerId;
      }

      return isProperOrderType && isProperOrderStatus && isProperSearchQuery;
    }).toList();

    return filtered ?? orders ?? [];
  }
}
