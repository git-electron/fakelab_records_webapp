import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/clickable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderCard extends StatelessWidget {
  const OrderCard(this.order, {super.key});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Clickable(
      onTap: () {},
      child: Container(
        width: 200,
        height: 120,
        padding: const Pad(all: 15),
        decoration: ShapeDecoration(
          color: const Color(0xff1A1A1A),
          shadows: [context.colors.shadow],
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
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: order.status.color,
                    shape: BoxShape.circle,
                  ),
                ),
                const Gap(5),
                Text(
                  order.status.title,
                  style: context.styles.footer3.copyWith(
                    color: context.colors.white,
                  ),
                ),
              ],
            ),
            FittedBox(
              child: Text(
                order.typeTitleForCard,
                style: context.styles.title3.copyWith(
                  height: .85,
                  color: context.colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  order.idShort,
                  style: context.styles.footer3.copyWith(
                    color: context.colors.subtitle,
                  ),
                ),
                Text(
                  order.dateCreated.toDDmmYYYYwithMonths(withWords: true),
                  style: context.styles.footer3.copyWith(
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
}
