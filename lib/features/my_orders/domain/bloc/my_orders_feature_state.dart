part of 'my_orders_feature_bloc.dart';

@freezed
class MyOrdersFeatureState with _$MyOrdersFeatureState {
  const factory MyOrdersFeatureState.loading() = _Loading;

  const factory MyOrdersFeatureState.loaded(List<Order> orders) = _Loaded;

  const factory MyOrdersFeatureState.error(String? message) = _Error;

  const MyOrdersFeatureState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeWhen(
        loaded: (_) => true,
        orElse: () => false,
      );

  List<Order>? get orders => whenOrNull(loaded: (orders) => orders);

  bool get hasOrders => maybeWhen(
        loaded: (orders) => orders.isNotEmpty,
        orElse: () => false,
      );

  String? get message => whenOrNull(error: (message) => message);

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );
}
