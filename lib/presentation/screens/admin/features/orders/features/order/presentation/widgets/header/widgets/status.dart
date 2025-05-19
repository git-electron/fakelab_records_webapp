part of '../../../admin_order_screen.dart';

class _Status extends StatelessWidget {
  const _Status(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        _Chip.fromStatus(order.status),
        if (order.isRequest) const _Chip.request(),
      ],
    );
  }
}
