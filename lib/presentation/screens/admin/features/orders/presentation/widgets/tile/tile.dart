part of '../../admin_orders_screen.dart';

class _Tile extends StatelessWidget {
  const _Tile(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: () => context.pushRoute(AdminOrderRoute(
        orderId: order.id,
        adminStaffBloc: context.read(),
        adminOrdersBloc: context.read(),
      )),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            padding: Pad(all: isMobile ? 15 : 20),
            decoration: ShapeDecoration(
              color: context.colors.card,
              shape: BorderRadius.circular(20).smoothShape(),
            ),
            child: Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Header(order),
                _Properties(order),
              ],
            ),
          ),
          if (order.isRequest)
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: context.colors.primary,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 5,
                  color: context.colors.background,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

