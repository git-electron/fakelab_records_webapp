part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(UserState.unauthorized()) UserState userState,
    @Default(MyOrdersFeatureState.loading())
    MyOrdersFeatureState myOrdersFeatureState,
  }) = _HomeState;

  const HomeState._();

  bool get isLoading => userState.isLoading || myOrdersFeatureState.isLoading;

  bool get hasError => userState.hasError || myOrdersFeatureState.hasError;
}
