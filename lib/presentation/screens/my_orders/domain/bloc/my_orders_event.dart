part of 'my_orders_bloc.dart';

@freezed
class MyOrdersEvent with _$MyOrdersEvent {
  const factory MyOrdersEvent.userStateChanged(UserState state) =
      _UserStateChanged;

  const factory MyOrdersEvent.myOrdersFeatureStateChanged(
      MyOrdersFeatureState state) = _MyOrdersFeatureStateChanged;
}
