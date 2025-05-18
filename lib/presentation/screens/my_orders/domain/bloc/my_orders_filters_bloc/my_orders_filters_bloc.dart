import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../../../../features/my_orders/domain/models/order/order_type.dart';

part 'my_orders_filters_bloc.freezed.dart';
part 'my_orders_filters_event.dart';
part 'my_orders_filters_state.dart';

@injectable
class MyOrdersFiltersBloc
    extends Bloc<MyOrdersFiltersEvent, MyOrdersFiltersState> {
  MyOrdersFiltersBloc() : super(const _MyOrdersFiltersState()) {
    on<_TypeFilterChanged>(_onTypeFilterChanged);
    on<_StatusFilterChanged>(_onStatusFilterChanged);
  }

  Future<void> _onTypeFilterChanged(
    _TypeFilterChanged event,
    Emitter<MyOrdersFiltersState> emit,
  ) async {
    emit(state.copyWith(type: event.type));
  }

  Future<void> _onStatusFilterChanged(
    _StatusFilterChanged event,
    Emitter<MyOrdersFiltersState> emit,
  ) async {
    emit(state.copyWith(status: event.status));
  }
}
