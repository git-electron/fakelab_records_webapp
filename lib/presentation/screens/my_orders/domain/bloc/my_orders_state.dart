part of 'my_orders_bloc.dart';

@freezed
class MyOrdersState with _$MyOrdersState {
  const factory MyOrdersState({
    @Default(UserState.unauthorized()) UserState userState,
    @Default(MyOrdersFeatureState.loading())
    MyOrdersFeatureState myOrdersFeatureState,
  }) = _MyOrdersState;

  const MyOrdersState._();

  bool get isLoading => userState.isLoading || myOrdersFeatureState.isLoading;

  bool get hasError => userState.hasError || myOrdersFeatureState.hasError;
}
