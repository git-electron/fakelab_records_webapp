part of 'admin_create_order_bloc.dart';

@freezed
class AdminCreateOrderState with _$AdminCreateOrderState {
  const factory AdminCreateOrderState({
    @Default(false) isLoading,
    User? customer,
    OrderType? orderType,
  }) = _AdminCreateOrderState;

  const AdminCreateOrderState._();

  bool get canProceed => customer != null && orderType != null;

  Order _order(IdGenerator idGenerator) {
    final String id = idGenerator.generate();
    final DateTime now = DateTime.now();

    return Order(
      id: id,
      customer: customer!,
      type: orderType!,
      status: OrderStatus.REQUEST,
      statusHistory: [
        OrderStatusHistoryItem(
          status: OrderStatus.REQUEST,
          dateChanged: now,
        ),
      ],
      dateCreated: now,
      dateChanged: now,
      totalCost: orderType!.totalCost,
      costFrom: orderType!.costFrom,
      filters: OrderFilters(
        userIdStatusType:
            '${customer!.id}-${OrderStatus.REQUEST.name}-${orderType!.name}',
      ),
      services: orderType!.services,
    );
  }
}
