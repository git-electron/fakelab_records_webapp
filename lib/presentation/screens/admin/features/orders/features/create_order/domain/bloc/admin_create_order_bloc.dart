import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_type.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'admin_create_order_event.dart';
part 'admin_create_order_state.dart';
part 'admin_create_order_bloc.freezed.dart';

@injectable
class AdminCreateOrderBloc
    extends Bloc<AdminCreateOrderEvent, AdminCreateOrderState> {
  AdminCreateOrderBloc(@factoryParam this.adminOrdersBloc)
      : super(const _AdminCreateOrderState()) {
    on<_CustomerSelected>(_onCustomerSelected);
    on<_OrderTypeSelected>(_onOrderTypeSelected);

    on<_CreateButtonPressed>(_onCreateButtonPressed);
  }

  final AdminOrdersBloc adminOrdersBloc;

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
  ) async {}
}
