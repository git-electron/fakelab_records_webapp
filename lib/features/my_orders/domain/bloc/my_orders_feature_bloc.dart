import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/features/my_orders/data/client/orders_client.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

part 'my_orders_feature_event.dart';
part 'my_orders_feature_state.dart';
part 'my_orders_feature_bloc.freezed.dart';

@injectable
class MyOrdersFeatureBloc
    extends Bloc<MyOrdersFeatureEvent, MyOrdersFeatureState> {
  MyOrdersFeatureBloc(
    @factoryParam this.hasLimit,
    this.userBloc,
    this.ordersClient,
  ) : super(const _Loading()) {
    on<_SetError>(_onSetError);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetLoading>(_onSetLoading);

    tryOrNullAsync(_getOrders);
    userBloc.stream.listen(_onUserStateEvent);
  }

  final bool hasLimit;
  final UserBloc userBloc;
  final OrdersClient ordersClient;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<MyOrdersFeatureState> emit,
  ) async {
    emit(const MyOrdersFeatureState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<MyOrdersFeatureState> emit,
  ) async {
    emit(MyOrdersFeatureState.loaded(event.orders));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<MyOrdersFeatureState> emit,
  ) async {
    emit(MyOrdersFeatureState.error(event.message));
  }

  void _onUserStateEvent(UserState userState) {
    if (userState.isAuthorized && !state.isLoaded) _getOrders();
  }

  Future<void> _getOrders() async {
    final int userId = userBloc.state.user!.id;
    add(const MyOrdersFeatureEvent.setLoading());
    final Result<List<Order>> result = await ordersClient.getOrders(
      userId,
      hasLimit: hasLimit,
    );
    result.when(
      success: (orders) => add(MyOrdersFeatureEvent.setLoaded(orders)),
      error: (message) => add(MyOrdersFeatureEvent.setError(message)),
    );
  }
}
