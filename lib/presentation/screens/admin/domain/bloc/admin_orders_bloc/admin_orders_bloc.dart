import 'package:collection/collection.dart';
import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/client/admin_orders_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

part 'admin_orders_event.dart';
part 'admin_orders_state.dart';
part 'admin_orders_bloc.freezed.dart';

@injectable
class AdminOrdersBloc extends Bloc<AdminOrdersEvent, AdminOrdersState> {
  AdminOrdersBloc(this.userBloc, this.adminOrdersClient)
      : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    tryOrNullAsync(_getOrders);
  }

  final UserBloc userBloc;
  final AdminOrdersClient adminOrdersClient;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<AdminOrdersState> emit,
  ) async {
    emit(const AdminOrdersState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<AdminOrdersState> emit,
  ) async {
    emit(AdminOrdersState.loaded(event.orders));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<AdminOrdersState> emit,
  ) async {
    emit(AdminOrdersState.error(event.message));
  }

  Future<void> _getOrders() async {
    if (!userBloc.state.user!.isAdmin) return;

    add(const AdminOrdersEvent.setLoading());
    final Result<List<Order>> result = await adminOrdersClient.getOrders();
    result.when(
      success: (orders) => add(AdminOrdersEvent.setLoaded(orders)),
      error: (message) => add(AdminOrdersEvent.setError(message)),
    );
  }
}
