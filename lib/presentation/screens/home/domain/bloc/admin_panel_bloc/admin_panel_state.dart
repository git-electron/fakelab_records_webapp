part of 'admin_panel_bloc.dart';

@freezed
class AdminPanelState with _$AdminPanelState {
  const factory AdminPanelState.collapsed() = _Collapsed;

  const factory AdminPanelState.loading() = _Loading;

  const factory AdminPanelState.loaded({
    required List<Order> orders,
    required List<User> clients,
  }) = _Loaded;

  const factory AdminPanelState.error(String? message) = _Error;

  const AdminPanelState._();

  bool get isCollapsed => maybeWhen(
        collapsed: () => true,
        orElse: () => false,
      );

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeMap(
        loaded: (_) => true,
        orElse: () => false,
      );

  List<Order>? get orders => mapOrNull(loaded: (loaded) => loaded.orders);
  List<User>? get clients => mapOrNull(loaded: (loaded) => loaded.clients);

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );

  String? get message => whenOrNull(error: (message) => message);

  int get requestCount => _ordersByStatusCount(OrderStatus.REQUEST);
  int get pendingCount => _ordersByStatusCount(OrderStatus.PENDING);
  int get inProgressCount => _ordersByStatusCount(OrderStatus.IN_PROGRESS);

  int _ordersByStatusCount(OrderStatus status) {
    return maybeMap(
      loaded: (loaded) {
        return loaded.orders.where((order) => order.status == status).length;
      },
      orElse: () => 0,
    );
  }

  int get clientsCount => _clientsCount();

  int _clientsCount() {
    return maybeMap(
      loaded: (loaded) => loaded.clients.length,
      orElse: () => 0,
    );
  }

  double get totalIncome => maybeMap(
        loaded: (loaded) => loaded.orders
            .where((order) => order.status == OrderStatus.COMPLETED)
            .map((order) => order.totalCost)
            .sum,
        orElse: () => 0,
      );
}
