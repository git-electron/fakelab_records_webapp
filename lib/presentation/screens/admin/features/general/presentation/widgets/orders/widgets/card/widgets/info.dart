part of '../../../../../admin_general_screen.dart';

class _Info extends StatelessWidget {
  const _Info(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        _Customer(order.customer),
        _TotalCost(order),
      ],
    );
  }
}
