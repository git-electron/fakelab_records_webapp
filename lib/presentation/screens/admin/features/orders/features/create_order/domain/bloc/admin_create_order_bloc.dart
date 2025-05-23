import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../../../../../../../core/domain/models/result/result.dart';
import '../../../../../../../../../core/domain/models/user/user.dart';
import '../../../../../../../../../core/router/router.dart';
import '../../../../../../../../../core/utils/id_generator/id_generator.dart';
import '../../../../../../../../../features/my_orders/domain/models/order/filters/order_filters.dart';
import '../../../../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../../../../../../../features/my_orders/domain/models/order/order_type.dart';
import '../../../../../../../../../features/my_orders/domain/models/order/status_history_item/order_status_history_item.dart';
import '../../../../../../domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import '../../client/admin_create_order_client.dart';

part 'admin_create_order_bloc.freezed.dart';
part 'admin_create_order_event.dart';
part 'admin_create_order_state.dart';

@injectable
class AdminCreateOrderBloc
    extends Bloc<AdminCreateOrderEvent, AdminCreateOrderState> {
  AdminCreateOrderBloc(
    this._router,
    this._idGenerator,
    this._adminCreateOrderClient,
    @factoryParam this._adminOrdersBloc,
  ) : super(const _AdminCreateOrderState()) {
    on<_CustomerSelected>(_onCustomerSelected);
    on<_OrderTypeSelected>(_onOrderTypeSelected);
    on<_CreateButtonPressed>(_onCreateButtonPressed);
  }

  final AppRouter _router;
  final IdGenerator _idGenerator;
  final AdminOrdersBloc _adminOrdersBloc;
  final AdminCreateOrderClient _adminCreateOrderClient;

  Future<void> _onCustomerSelected(
    _CustomerSelected event,
    Emitter<AdminCreateOrderState> emit,
  ) async {
    emit(state.copyWith(customer: event.customer));
  }

  Future<void> _onOrderTypeSelected(
    _OrderTypeSelected event,
    Emitter<AdminCreateOrderState> emit,
  ) async {
    emit(state.copyWith(orderType: event.type));
  }

  Future<void> _onCreateButtonPressed(
    _CreateButtonPressed event,
    Emitter<AdminCreateOrderState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final Order order = state.order(_idGenerator);

    final Result<Order> result =
        await _adminCreateOrderClient.createOrder(order);
    result.when(
      success: (order) {
        emit(state.copyWith(isLoading: false));
        if (_adminOrdersBloc.state.isLoaded) {
          final List<Order> updatedOrders = [
            order,
            ..._adminOrdersBloc.state.orders!,
          ];

          _adminOrdersBloc.add(AdminOrdersEvent.setLoaded(updatedOrders));
          _router.pop();
        }
      },
      error: (message) => emit(state.copyWith(isLoading: false)),
    );
  }
}
