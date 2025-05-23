import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../../../core/domain/models/result/result.dart';
import '../../../../../core/domain/service/telegram_service.dart';
import '../../../../../core/utils/try_or/try_or_null.dart';
import '../../../../../features/my_orders/domain/models/order/order.dart';
import '../../data/client/my_order_client.dart';
import '../models/my_order_bloc_data.dart';

part 'my_order_bloc.freezed.dart';
part 'my_order_event.dart';
part 'my_order_state.dart';

@injectable
class MyOrderBloc extends Bloc<MyOrderEvent, MyOrderState> {
  MyOrderBloc(
    this._myOrderClient,
    this._telegramService,
    @factoryParam MyOrderBlocData data,
  )   : orderId = data.orderId,
        super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    tryOrNullAsync(_getOrder);
    _telegramService.showBackButton();
  }

  @override
  Future<void> close() {
    _telegramService.hideBackButton();
    return super.close();
  }

  final String orderId;
  final MyOrderClient _myOrderClient;
  final TelegramService _telegramService;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<MyOrderState> emit,
  ) async {
    return emit(const MyOrderState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<MyOrderState> emit,
  ) async {
    return emit(MyOrderState.loaded(event.order));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<MyOrderState> emit,
  ) async {
    return emit(MyOrderState.error(event.message));
  }

  Future<void> _getOrder() async {
    add(const MyOrderEvent.setLoading());
    final Result<Order> result = await _myOrderClient.getOrder(orderId);
    result.when(
      success: (order) => add(MyOrderEvent.setLoaded(order)),
      error: (message) => add(MyOrderEvent.setError(message)),
    );
  }
}
