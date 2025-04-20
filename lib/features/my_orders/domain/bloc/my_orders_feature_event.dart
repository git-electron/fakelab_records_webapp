part of 'my_orders_feature_bloc.dart';

@freezed
class MyOrdersFeatureEvent with _$MyOrdersFeatureEvent {
  const factory MyOrdersFeatureEvent.setLoading() = _SetLoading;

  const factory MyOrdersFeatureEvent.setLoaded(List<Order> orders) = _SetLoaded;

  const factory MyOrdersFeatureEvent.setError(String? message) = _SetError;
}
