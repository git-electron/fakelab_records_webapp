part of '../../../my_orders_feature.dart';

class _OrderCardSmall extends StatelessWidget {
  const _OrderCardSmall(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: () => context.pushRoute(MyOrderRoute(orderId: order.id)),
      child: Container(
        width: 200,
        height: 120,
        padding: const Pad(all: 15),
        decoration: ShapeDecoration(
          color: context.colors.card,
          shape: BorderRadius.circular(20).smoothShape(),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _StatusSmall(order.status),
            _TitleSmall(order.typeTitleForCard),
            _InfoSmall(order),
          ],
        ),
      ),
    );
  }
}
