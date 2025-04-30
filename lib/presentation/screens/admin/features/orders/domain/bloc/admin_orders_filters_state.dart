part of 'admin_orders_filters_bloc.dart';

@freezed
class AdminOrdersFiltersState with _$AdminOrdersFiltersState {
  const factory AdminOrdersFiltersState({
    OrderType? type,
    OrderStatus? status,
    String? searchQuery,
    PickerDateRange? dateRange,
  }) = _AdminOrdersFiltersState;

  const AdminOrdersFiltersState._();

  List<Order> filteredOrders(List<Order>? orders) {
    final List<Order>? filtered = orders?.where((order) {
      bool isProperOrderType = true;
      bool isProperOrderStatus = true;
      bool isProperSearchQuery = true;
      bool isProperDateRange = true;

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

      if (dateRange != null) {
        bool isProperStartDate = true;
        bool isProperEndDate = true;

        final DateTime dateCreated = order.dateCreated;

        final DateTime? startDate = dateRange!.startDate;
        final DateTime? endDate = dateRange!.endDate;

        if (startDate != null) {
          isProperStartDate = dateCreated.isAfterOrAtSameMomentAs(startDate);
        } else {
          isProperStartDate = dateCreated.isAfterOrAtSameMomentAs(endDate!);
        }
        if (endDate != null) {
          isProperEndDate =
              dateCreated.isBeforeOrAtSameMomentAs(endDate.copyWith(
            hour: 23,
            minute: 59,
            second: 59,
          ));
        } else {
          isProperEndDate =
              dateCreated.isBeforeOrAtSameMomentAs(startDate!.copyWith(
            hour: 23,
            minute: 59,
            second: 59,
          ));
        }

        isProperDateRange = isProperStartDate && isProperEndDate;
      }

      return isProperOrderType &&
          isProperOrderStatus &&
          isProperSearchQuery &&
          isProperDateRange;
    }).toList();

    return filtered ?? orders ?? [];
  }
}
