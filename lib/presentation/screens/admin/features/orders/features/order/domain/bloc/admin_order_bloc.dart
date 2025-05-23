import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../../core/utils/try_or/try_or_null.dart';
import '../../../../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../../../../domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import '../../../../../staff/domain/models/staff_member.dart';
import '../../client/admin_order_client.dart';
import '../models/admin_order_bloc_data.dart';

part 'admin_order_bloc.freezed.dart';
part 'admin_order_event.dart';
part 'admin_order_state.dart';

@injectable
class AdminOrderBloc extends Bloc<AdminOrderEvent, AdminOrderState> {
  AdminOrderBloc(
    this._adminOrderClient,
    @factoryParam AdminOrderBlocData data,
  )   : orderId = data.orderId,
        _adminOrdersBloc = data.adminOrdersBloc,
        super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    on<_UpdateOrderStatus>(_onUpdateOrderStatus);
    on<_UpdateOrderAssignee>(_onUpdateOrderAssignee);
    on<_UpdateOrderTotalCost>(_onUpdateOrderTotalCost);

    tryOrNullAsync(_getOrder);
  }

  final String orderId;
  final AdminOrdersBloc _adminOrdersBloc;
  final AdminOrderClient _adminOrderClient;

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
    final Result<Order> result = await _adminOrderClient.getOrder(orderId);
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
    final Result<Order> result = await _adminOrderClient.updateOrder(
      state.order!,
      status: status,
      message: message,
      assignee: assignee,
      totalCost: totalCost,
    );
    result.when(
      success: (updatedOrder) {
        add(AdminOrderEvent.setLoaded(updatedOrder));
        if (_adminOrdersBloc.state.isLoaded) {
          final List<Order> updatedOrders =
              _adminOrdersBloc.state.orders!.map((order) {
            return order.id == updatedOrder.id ? updatedOrder : order;
          }).toList();

          _adminOrdersBloc.add(AdminOrdersEvent.setLoaded(updatedOrders));
        }
      },
      error: (message) => add(AdminOrderEvent.setError(message)),
    );
  }
}
