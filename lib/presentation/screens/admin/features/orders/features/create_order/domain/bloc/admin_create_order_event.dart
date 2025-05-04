part of 'admin_create_order_bloc.dart';

@freezed
class AdminCreateOrderEvent with _$AdminCreateOrderEvent {
  const factory AdminCreateOrderEvent.customerSelected(User? customer) =
      _CustomerSelected;

  const factory AdminCreateOrderEvent.orderTypeSelected(OrderType? type) =
      _OrderTypeSelected;

  const factory AdminCreateOrderEvent.createButtonPressed() =
      _CreateButtonPressed;
}
