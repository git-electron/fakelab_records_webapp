part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.loading() = _Loading;

  const factory OrdersState.loaded(List<Order> orders) = _Loaded;

  const factory OrdersState.error(String? message) = _Error;

  const OrdersState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeWhen(
        loaded: (_) => true,
        orElse: () => false,
      );

  List<Order>? get orders => whenOrNull(
        loaded: (orders) => orders,
      );
}
