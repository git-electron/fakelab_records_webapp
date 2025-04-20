import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/features/my_orders/data/client/orders_client.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/models/order/order.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc(this.userBloc, this.ordersClient) : super(const _Loading()) {
    on<_SetError>(_onSetError);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetLoading>(_onSetLoading);

    userBloc.stream.listen((userState) async {
      if (userState.isAuthorized && !state.isLoaded) {
        _getOrders(userState.user!.id);
      }
    });
  }

  final UserBloc userBloc;
  final OrdersClient ordersClient;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<OrdersState> emit,
  ) async {
    emit(const OrdersState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<OrdersState> emit,
  ) async {
    emit(OrdersState.loaded(event.orders));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<OrdersState> emit,
  ) async {
    emit(OrdersState.error(event.message));
  }

  Future<void> _getOrders(int userId) async {
    add(const OrdersEvent.setLoading());
    final Result<List<Order>> result = await ordersClient.getOrders(userId);
    result.when(
      success: (orders) => add(OrdersEvent.setLoaded(orders)),
      error: (message) => add(OrdersEvent.setError(message)),
    );
  }
}
