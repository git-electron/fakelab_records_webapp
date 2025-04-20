part of 'my_order_bloc.dart';

@freezed
class MyOrderEvent with _$MyOrderEvent {
  const factory MyOrderEvent.setLoading() = _SetLoading;

  const factory MyOrderEvent.setLoaded(Order order) = _SetLoaded;

  const factory MyOrderEvent.setError(String? message) = _SetError;
}