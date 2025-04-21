part of 'my_order_bloc.dart';

@freezed
class MyOrderState with _$MyOrderState {
  const factory MyOrderState.loading() = _Loading;

  const factory MyOrderState.loaded(Order order) = _Loaded;

  const factory MyOrderState.error(String? message) = _Error;

  const MyOrderState._();

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
}
