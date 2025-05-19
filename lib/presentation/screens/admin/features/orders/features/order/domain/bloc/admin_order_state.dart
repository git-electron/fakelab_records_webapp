part of 'admin_order_bloc.dart';

@freezed
class AdminOrderState with _$AdminOrderState {
  const factory AdminOrderState.loading() = _Loading;

  const factory AdminOrderState.loaded(Order order) = _Loaded;

  const factory AdminOrderState.error(String? message) = _Error;

  const AdminOrderState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeWhen(
        loaded: (_) => true,
        orElse: () => false,
      );

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );

  Order? get order => whenOrNull(loaded: (order) => order);

  String? get message => whenOrNull(error: (message) => message);

  bool get hasActualActions => !_isOrderCompleted && !_isOrderCancelled;

  bool get _isOrderCompleted => order?.isCompleted ?? false;
  bool get _isOrderCancelled => order?.isCancelled ?? false;
}
