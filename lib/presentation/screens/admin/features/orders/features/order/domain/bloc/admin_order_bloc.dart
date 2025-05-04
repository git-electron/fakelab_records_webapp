import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/order/client/admin_order_client.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

part 'admin_order_event.dart';
part 'admin_order_state.dart';
part 'admin_order_bloc.freezed.dart';

@injectable
class AdminOrderBloc extends Bloc<AdminOrderEvent, AdminOrderState> {
  AdminOrderBloc(
    @factoryParam this.orderId,
    @factoryParam this.adminOrdersBloc,
    this.adminOrderClient,
  ) : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    on<_UpdateOrderStatus>(_onUpdateOrderStatus);
    on<_UpdateOrderAssignee>(_onUpdateOrderAssignee);
    on<_UpdateOrderTotalCost>(_onUpdateOrderTotalCost);

    tryOrNullAsync(_getOrder);
  }

  final String orderId;
  final AdminOrdersBloc adminOrdersBloc;
  final AdminOrderClient adminOrderClient;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<AdminOrderState> emit,
  ) async {
    return emit(const AdminOrderState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<AdminOrderState> emit,
  ) async {
    return emit(AdminOrderState.loaded(event.order));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<AdminOrderState> emit,
  ) async {
    return emit(AdminOrderState.error(event.message));
  }

  Future<void> _onUpdateOrderStatus(
    _UpdateOrderStatus event,
    Emitter<AdminOrderState> emit,
  ) async {
    tryOrNullAsync(() => _updateOrder(
          status: event.status,
          message: event.message,
          assignee: event.assignee,
          totalCost: event.totalCost,
        ));
  }

  Future<void> _onUpdateOrderAssignee(
    _UpdateOrderAssignee event,
    Emitter<AdminOrderState> emit,
  ) async {
    tryOrNullAsync(() => _updateOrder(assignee: event.assignee));
  }

  Future<void> _onUpdateOrderTotalCost(
    _UpdateOrderTotalCost event,
    Emitter<AdminOrderState> emit,
  ) async {
    tryOrNullAsync(() => _updateOrder(totalCost: event.totalCost));
  }

  Future<void> _getOrder() async {
    add(const AdminOrderEvent.setLoading());
    final Result<Order> result = await adminOrderClient.getOrder(orderId);
    result.when(
      success: (order) => add(AdminOrderEvent.setLoaded(order)),
      error: (message) => add(AdminOrderEvent.setError(message)),
    );
  }

  Future<void> _updateOrder({
    String? message,
    double? totalCost,
    OrderStatus? status,
    StaffMember? assignee,
  }) async {
    add(const AdminOrderEvent.setLoading());
    final Result<Order> result = await adminOrderClient.updateOrder(
      state.order!,
      status: status,
      message: message,
      assignee: assignee,
      totalCost: totalCost,
    );
    result.when(
      success: (updatedOrder) {
        add(AdminOrderEvent.setLoaded(updatedOrder));
        if (adminOrdersBloc.state.isLoaded) {
          final List<Order> updatedOrders =
              adminOrdersBloc.state.orders!.map((order) {
            return order.id == updatedOrder.id ? updatedOrder : order;
          }).toList();

          adminOrdersBloc.add(AdminOrdersEvent.setLoaded(updatedOrders));
        }
      },
      error: (message) => add(AdminOrderEvent.setError(message)),
    );
  }
}
