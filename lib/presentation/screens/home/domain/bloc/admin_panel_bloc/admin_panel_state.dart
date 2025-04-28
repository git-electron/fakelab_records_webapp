part of 'admin_panel_bloc.dart';

@freezed
class AdminPanelState with _$AdminPanelState {
  const factory AdminPanelState.loading() = _Loading;

  const factory AdminPanelState.loaded(List<Order> orders) = _Loaded;

  const factory AdminPanelState.error(String? message) = _Error;

  const AdminPanelState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeWhen(
        loaded: (_) => true,
        orElse: () => false,
      );

  List<Order>? get orders => whenOrNull(loaded: (orders) => orders);

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );

  String? get message => whenOrNull(error: (message) => message);

  int get requestCount => _ordersByStatusCount(OrderStatus.REQUEST);
  int get pendingCount => _ordersByStatusCount(OrderStatus.PENDING);
  int get inProgressCount => _ordersByStatusCount(OrderStatus.IN_PROGRESS);

  int _ordersByStatusCount(OrderStatus status) {
    return maybeWhen(
      loaded: (orders) {
        return orders.where((order) => order.status == status).length;
      },
      orElse: () => 0,
    );
  }

  double get totalIncome => maybeWhen(
        loaded: (orders) => orders
            .where((order) => order.status == OrderStatus.COMPLETED)
            .map((order) => order.totalCost)
            .sum,
        orElse: () => 0,
      );
}
