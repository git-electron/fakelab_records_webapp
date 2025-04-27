import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import '../../../core/extensions/datetime_extensions.dart';
import '../../../core/gen/assets.gen.dart';
import '../../../core/router/router.gr.dart';
import '../../../core/theme/theme_extensions.dart';
import '../domain/models/order/order.dart';
import '../domain/models/order/order_status.dart';
import '../../../presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderCard extends StatelessWidget {
  const OrderCard(this.order, {super.key});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: () => context.pushRoute(MyOrderRoute(orderId: order.id)),
      child: Container(
        padding: const Pad(all: 20),
        decoration: ShapeDecoration(
          color: context.colors.card,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 20,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: ShapeDecoration(
                    color: order.status.color,
                    shape: SmoothRectangleBorder(
                      borderRadius: SmoothBorderRadius(
                        cornerRadius: 10,
                        cornerSmoothing: 0.6,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: icon.svg(height: 15, width: 15),
                ),
                const Gap(10),
                Text(
                  order.status.title,
                  style: context.styles.footer1.copyWith(
                    color: context.colors.body,
                  ),
                ),
              ],
            ),
            const Gap(20),
            Text(
              order.typeTitleForCard,
              style: context.styles.title3.copyWith(
                fontSize: 25,
                height: .85,
                color: context.colors.body,
              ),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  order.idShort,
                  style: context.styles.footer2.copyWith(
                    color: context.colors.subtitle,
                  ),
                ),
                Text(
                  _dateTime(
                    order.dateCreated.toDDmmYYYYwithMonths(
                      withWords: true,
                      isShort: false,
                    ),
                    order.dateCreated.toHHmm(shoudApplyPaddingToHours: true),
                  ),
                  style: context.styles.footer2.copyWith(
                    color: context.colors.subtitle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _dateTime(String date, String time) => '$date в $time';

  SvgGenImage get icon => switch (order.status) {
        OrderStatus.REQUEST => Assets.icons.box.dark,
        OrderStatus.PENDING => Assets.icons.clock.dark,
        OrderStatus.IN_PROGRESS => Assets.icons.clock.dark,
        OrderStatus.AWAITING_CONFIRMATION => Assets.icons.check.dark,
        OrderStatus.COMPLETED => Assets.icons.doubleCheck.dark,
        OrderStatus.CANCELLED => Assets.icons.cross.dark,
      };
}
