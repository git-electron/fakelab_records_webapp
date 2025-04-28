import 'package:collection/collection.dart';
import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/general/data/client/admin_general_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

part 'admin_general_event.dart';
part 'admin_general_state.dart';
part 'admin_general_bloc.freezed.dart';

@injectable
class AdminGeneralBloc extends Bloc<AdminGeneralEvent, AdminGeneralState> {
  AdminGeneralBloc(this.userBloc, this.adminPanelClient)
      : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    tryOrNullAsync(_getOrders);
  }

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<AdminGeneralState> emit,
  ) async {
    emit(const AdminGeneralState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<AdminGeneralState> emit,
  ) async {
    emit(AdminGeneralState.loaded(event.orders));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<AdminGeneralState> emit,
  ) async {
    emit(AdminGeneralState.error(event.message));
  }

  final UserBloc userBloc;
  final AdminGeneralClient adminPanelClient;

  Future<void> _getOrders() async {
    if (!userBloc.state.user!.isAdmin) return;

    add(const AdminGeneralEvent.setLoading());
    final Result<List<Order>> result = await adminPanelClient.getOrders();
    result.when(
      success: (orders) => add(AdminGeneralEvent.setLoaded(orders)),
      error: (message) => add(AdminGeneralEvent.setError(message)),
    );
  }
}
