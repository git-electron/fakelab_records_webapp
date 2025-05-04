part of 'admin_create_order_bloc.dart';

@freezed
class AdminCreateOrderState with _$AdminCreateOrderState {
  const factory AdminCreateOrderState({
    @Default(false) isLoading,
    User? customer,
    OrderType? orderType,
  }) = _AdminCreateOrderState;

  const AdminCreateOrderState._();

  bool get canProceed => customer != null && orderType != null;
}
