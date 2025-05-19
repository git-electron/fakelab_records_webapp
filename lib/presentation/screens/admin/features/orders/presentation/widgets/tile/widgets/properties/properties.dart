part of '../../../../admin_orders_screen.dart';

class _Properties extends StatelessWidget {
  const _Properties(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {

    return Row(
      spacing: 15,
      children: [
        _Title(order.type.title),
        _Assignee(order.assignee),
        _Customer(order.customer),
        _TotalCost(order),
      ],
    );
  }
}
