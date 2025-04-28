import 'package:collection/collection.dart';
import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/data/client/admin_panel_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

part 'admin_panel_event.dart';
part 'admin_panel_state.dart';
part 'admin_panel_bloc.freezed.dart';

@injectable
class AdminPanelBloc extends Bloc<AdminPanelEvent, AdminPanelState> {
  AdminPanelBloc(this.userBloc, this.adminPanelClient)
      : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    tryOrNullAsync(_getOrders);
    userBloc.stream.listen(_onUserStateEvent);
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
    emit(AdminPanelState.loaded(event.orders));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<AdminPanelState> emit,
  ) async {
    emit(AdminPanelState.error(event.message));
  }

  final UserBloc userBloc;
  final AdminPanelClient adminPanelClient;

  void _onUserStateEvent(UserState userState) {
    if (userState.isAuthorized && !state.isLoaded) _getOrders();
  }

  Future<void> _getOrders() async {
    if (!userBloc.state.user!.isAdmin) return;

    add(const AdminPanelEvent.setLoading());
    final Result<List<Order>> result = await adminPanelClient.getOrders();
    result.when(
      success: (orders) => add(AdminPanelEvent.setLoaded(orders)),
      error: (message) => add(AdminPanelEvent.setError(message)),
    );
  }
}
