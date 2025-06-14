import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../../../../core/domain/models/result/result.dart';
import '../../../../core/utils/try_or/try_or_null.dart';
import '../../data/client/orders_client.dart';
import '../models/limit_policy/limit_policy.dart';
import '../models/my_orders_feature_bloc_data/my_orders_feature_bloc_data.dart';
import '../models/order/order.dart';

part 'my_orders_feature_bloc.freezed.dart';
part 'my_orders_feature_event.dart';
part 'my_orders_feature_state.dart';

@injectable
class MyOrdersFeatureBloc
    extends Bloc<MyOrdersFeatureEvent, MyOrdersFeatureState> {
  MyOrdersFeatureBloc(
    this._userBloc,
    this._ordersClient,
    @factoryParam MyOrdersFeatureBlocData data,
  )   : _limitPolicy = data.limitPolicy,
        super(const _Loading()) {
    on<_SetError>(_onSetError);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetLoading>(_onSetLoading);

    tryOrNullAsync(_getOrders);
    _userStateSubscription = _userBloc.stream.listen(_onUserStateEvent);
  }

  @override
  Future<void> close() {
    _userStateSubscription.cancel();
    return super.close();
  }

  final UserBloc _userBloc;
  final OrdersClient _ordersClient;
  final MyOrdersLimitPolicy _limitPolicy;

  late final StreamSubscription _userStateSubscription;

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
    final int userId = _userBloc.state.user!.id;
    add(const MyOrdersFeatureEvent.setLoading());
    final Result<List<Order>> result = await _ordersClient.getOrders(
      userId,
      hasLimit: _limitPolicy.hasLimit,
    );
    result.when(
      success: (orders) => add(MyOrdersFeatureEvent.setLoaded(orders)),
      error: (message) => add(MyOrdersFeatureEvent.setError(message)),
    );
  }
}
