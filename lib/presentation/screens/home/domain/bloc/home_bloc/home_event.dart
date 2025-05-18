part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.userStateChanged(
    UserState state,
  ) = _UserStateChanged;

  const factory HomeEvent.myOrdersFeatureStateChanged(
    MyOrdersFeatureState state,
  ) = _MyOrdersFeatureStateChanged;
}
