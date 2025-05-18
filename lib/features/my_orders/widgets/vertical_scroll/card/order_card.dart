part of '../../../my_orders_feature.dart';

class _OrderCard extends StatelessWidget {
  const _OrderCard(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: () => context.pushRoute(MyOrderRoute(orderId: order.id)),
      child: Container(
        padding: const Pad(all: 20),
        decoration: ShapeDecoration(
          color: context.colors.card,
          shape: BorderRadius.circular(20).smoothShape(),
        ),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Status(order.status),
            _Title(order.typeTitleForCard),
            _Info(order),
          ],
        ),
      ),
    );
  }
}
