import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/core/router/router.dart';
import 'package:fakelab_records_webapp/core/utils/id_generator/id_generator.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/filters/order_filters.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_type.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/status_history_item/order_status_history_item.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/create_order/client/admin_create_order_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

part 'admin_create_order_event.dart';
part 'admin_create_order_state.dart';
part 'admin_create_order_bloc.freezed.dart';

@injectable
class AdminCreateOrderBloc
    extends Bloc<AdminCreateOrderEvent, AdminCreateOrderState> {
  AdminCreateOrderBloc(
    @factoryParam this.adminOrdersBloc,
    this.router,
    this.idGenerator,
    this.adminCreateOrderClient,
  ) : super(const _AdminCreateOrderState()) {
    on<_CustomerSelected>(_onCustomerSelected);
    on<_OrderTypeSelected>(_onOrderTypeSelected);

    on<_CreateButtonPressed>(_onCreateButtonPressed);
  }

  final AppRouter router;
  final IdGenerator idGenerator;
  final AdminOrdersBloc adminOrdersBloc;
  final AdminCreateOrderClient adminCreateOrderClient;

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
    final Order order = state.order(idGenerator);

    final Result<Order> result =
        await adminCreateOrderClient.createOrder(order);
    result.when(
      success: (order) {
        emit(state.copyWith(isLoading: false));
        if (adminOrdersBloc.state.isLoaded) {
          final List<Order> updatedOrders = [
            order,
            ...adminOrdersBloc.state.orders!,
          ];

          adminOrdersBloc.add(AdminOrdersEvent.setLoaded(updatedOrders));
          router.pop();
        }
      },
      error: (message) => emit(state.copyWith(isLoading: false)),
    );
  }
}
