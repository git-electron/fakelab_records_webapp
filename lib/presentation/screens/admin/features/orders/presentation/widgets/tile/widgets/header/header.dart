part of '../../../../admin_orders_screen.dart';

class _Header extends StatelessWidget {
  const _Header(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _Status(order.status),
        const _CircleDivider(),
        _HeaderText(order.idShort),
        const _CircleDivider(),
        _HeaderText(order.dateCreated.toDDmmYYYYwithMonths(withWords: true)),
      ],
    );
  }
}
