import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

part 'admin_orders_filters_event.dart';
part 'admin_orders_filters_state.dart';
part 'admin_orders_filters_bloc.freezed.dart';

@injectable
class AdminOrdersFiltersBloc
    extends Bloc<AdminOrdersFiltersEvent, AdminOrdersFiltersState> {
  AdminOrdersFiltersBloc() : super(const _AdminOrdersFiltersState()) {
    on<_TypeFilterChanged>(_onTypeFilterChanged);
    on<_SearchQueryChanged>(_onSearchQueryChanged);
    on<_StatusFilterChanged>(_onStatusFilterChanged);
  }

  Future<void> _onTypeFilterChanged(
    _TypeFilterChanged event,
    Emitter<AdminOrdersFiltersState> emit,
  ) async {
    emit(state.copyWith(type: event.type));
  }

  Future<void> _onSearchQueryChanged(
    _SearchQueryChanged event,
    Emitter<AdminOrdersFiltersState> emit,
  ) async {
    emit(state.copyWith(searchQuery: event.query));
  }

  Future<void> _onStatusFilterChanged(
    _StatusFilterChanged event,
    Emitter<AdminOrdersFiltersState> emit,
  ) async {
    emit(state.copyWith(status: event.status));
  }
}
