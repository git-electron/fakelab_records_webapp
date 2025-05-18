part of '../../../../admin_general_screen.dart';

class _OrderCard extends StatelessWidget {
  const _OrderCard(this.order);

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
        clipBehavior: Clip.none,
        alignment: Alignment.topRight,
        children: [
          Container(
            width: isMobile ? 200 : 280,
            height: isMobile ? 120 : 140,
            padding: Pad(all: isMobile ? 15 : 20),
            decoration: ShapeDecoration(
              color: context.colors.card,
              shape: BorderRadius.circular(20).smoothShape(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Status(order),
                _Title(order.type.title),
                _Info(order),
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

class OrderTileStatus extends StatelessWidget {
  const OrderTileStatus(this.status, {super.key});

  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: isMobile ? 15 : 20,
          width: isMobile ? 15 : 20,
          decoration: BoxDecoration(
            color: status.color,
            shape: BoxShape.circle,
          ),
        ),
        const Gap(5),
        Text(
          status.title,
          style: _topInfo(context, isMobile: isMobile)
              .copyWith(color: context.colors.body),
        ),
      ],
    );
  }

  TextStyle _topInfo(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer2;
}

class OrderTilePropertyTextSpan extends StatelessWidget {
  const OrderTilePropertyTextSpan({
    required this.icon,
    required this.children,
    super.key,
  });

  final SvgGenImage icon;
  final List<TextSpan> children;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon.svg(
          height: isMobile ? 15 : 25,
          width: isMobile ? 15 : 25,
        ),
        const Gap(5),
        Expanded(
          child: Text.rich(
            TextSpan(children: children),
            style: _footer(context, isMobile: isMobile)
                .copyWith(color: context.colors.body),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  TextStyle _footer(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer1;
}

class CircleDivider extends StatelessWidget {
  const CircleDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 3,
      margin: const Pad(horizontal: 7),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.colors.footer.copyWithOpacity(.5),
      ),
    );
  }
}
