import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/client/admin_order_client.dart';
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
    this.adminOrderClient,
  ) : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    tryOrNullAsync(_getOrder);
  }

  final String orderId;
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

  Future<void> _getOrder() async {
    add(const AdminOrderEvent.setLoading());
    final Result<Order> result = await adminOrderClient.getOrder(orderId);
    result.when(
      success: (order) => add(AdminOrderEvent.setLoaded(order)),
      error: (message) => add(AdminOrderEvent.setError(message)),
    );
  }
}
