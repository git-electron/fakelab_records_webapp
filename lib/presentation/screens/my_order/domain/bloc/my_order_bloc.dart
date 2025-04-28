import '../../../../../core/domain/models/result/result.dart';
import '../../../../../core/utils/try_or/try_or_null.dart';
import '../../../../../features/my_orders/domain/models/order/order.dart';
import '../../data/client/my_order_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

part 'my_order_event.dart';
part 'my_order_state.dart';
part 'my_order_bloc.freezed.dart';

@injectable
class MyOrderBloc extends Bloc<MyOrderEvent, MyOrderState> {
  MyOrderBloc(
    @factoryParam this.orderId,
    this.myOrderClient,
  ) : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    tryOrNullAsync(_getOrder);
  }

  final String orderId;
  final MyOrderClient myOrderClient;

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
    final Result<Order> result = await myOrderClient.getOrder(orderId);
    result.when(
      success: (order) => add(MyOrderEvent.setLoaded(order)),
      error: (message) => add(MyOrderEvent.setError(message)),
    );
  }
}
