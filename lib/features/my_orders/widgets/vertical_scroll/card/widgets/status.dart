part of '../../../../my_orders_feature.dart';

class _Status extends StatelessWidget {
  const _Status(this.status);

  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: ShapeDecoration(
            color: status.color,
            shape: BorderRadius.circular(10).smoothShape(),
          ),
          alignment: Alignment.center,
          child: icon.svg(height: 15, width: 15),
        ),
        Text(
          status.title,
          style: context.styles.footer1.copyWith(
            color: context.colors.body,
          ),
        ),
      ],
    );
  }

  SvgGenImage get icon => switch (status) {
        OrderStatus.REQUEST => Assets.icons.box.dark,
        OrderStatus.PENDING => Assets.icons.clock.dark,
        OrderStatus.IN_PROGRESS => Assets.icons.clock.dark,
        OrderStatus.AWAITING_CONFIRMATION => Assets.icons.check.dark,
        OrderStatus.COMPLETED => Assets.icons.doubleCheck.dark,
        OrderStatus.CANCELLED => Assets.icons.cross.dark,
      };
}
