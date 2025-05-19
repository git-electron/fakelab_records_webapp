import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../../../../../../core/domain/models/result/result.dart';
import '../../../../../../core/domain/models/user/user.dart';
import '../../../../../../core/utils/try_or/try_or_null.dart';
import '../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../data/client/admin_panel_client.dart';

part 'admin_panel_bloc.freezed.dart';
part 'admin_panel_event.dart';
part 'admin_panel_state.dart';

@injectable
class AdminPanelBloc extends Bloc<AdminPanelEvent, AdminPanelState> {
  AdminPanelBloc(this.userBloc, this.adminPanelClient)
      : super(const _Collapsed()) {
    on<_SetExpanded>(_onSetExpanded);
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);
  }

  Future<void> _onSetExpanded(
    _SetExpanded event,
    Emitter<AdminPanelState> emit,
  ) async {
    tryOrNullAsync(_getOrders);
    emit(const AdminPanelState.loading());
  }

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<AdminPanelState> emit,
  ) async {
    emit(const AdminPanelState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<AdminPanelState> emit,
  ) async {
    emit(AdminPanelState.loaded(orders: event.orders, clients: event.clients));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<AdminPanelState> emit,
  ) async {
    emit(AdminPanelState.error(event.message));
  }

  final UserBloc userBloc;
  final AdminPanelClient adminPanelClient;

  Future<void> _getOrders() async {
    if (!userBloc.state.user!.isAdmin) return;

    add(const AdminPanelEvent.setLoading());
    final Result<List<Order>> result = await adminPanelClient.getOrders();
    result.when(
      success: (orders) async {
        final Result<List<User>> result = await adminPanelClient.getClients();
        result.when(
          success: (clients) => add(AdminPanelEvent.setLoaded(
            orders: orders,
            clients: clients,
          )),
          error: (message) => add(AdminPanelEvent.setError(message)),
        );
      },
      error: (message) => add(AdminPanelEvent.setError(message)),
    );
  }
}
