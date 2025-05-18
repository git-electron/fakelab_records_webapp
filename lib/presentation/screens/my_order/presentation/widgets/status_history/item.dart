part of '../../my_order_screen.dart';

class _Item extends StatelessWidget {
  const _Item.info(this.item, {super.key});

  final OrderStatusHistoryItem item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrderBloc, MyOrderState>(
      builder: (context, state) {
        final Order order = state.order!;

        return Opacity(
          opacity: order.isCurrentStatusHistoryItem(item) ? 1 : .25,
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: ShapeDecoration(
                  color: item.status.color,
                  shape: BorderRadius.circular(15).smoothShape(),
                ),
                alignment: Alignment.center,
                child: _icon.svg(height: 25, width: 25),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.status.title, style: context.styles.body2),
                  const Gap(5),
                  Text(_dateTime, style: context.styles.footer1),
                  if (item.message.isNotNullAndEmpty)
                    Text(item.message!, style: context.styles.footer1),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  String get _dateTime {
    final String date = item.dateChanged.toDDmmYYYYwithMonths(
      withWords: true,
      isShort: false,
    );
    final String time = item.dateChanged.toHHmm(shoudApplyPaddingToHours: true);

    return '$date в $time';
  }

  SvgGenImage get _icon => switch (item.status) {
        OrderStatus.REQUEST => Assets.icons.box.dark,
        OrderStatus.PENDING => Assets.icons.clock.dark,
        OrderStatus.IN_PROGRESS => Assets.icons.clock.dark,
        OrderStatus.AWAITING_CONFIRMATION => Assets.icons.check.dark,
        OrderStatus.COMPLETED => Assets.icons.doubleCheck.dark,
        OrderStatus.CANCELLED => Assets.icons.cross.dark,
      };
}
