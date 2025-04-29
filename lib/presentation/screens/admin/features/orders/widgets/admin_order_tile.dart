import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdminOrderTile extends StatelessWidget {
  const AdminOrderTile(this.order, {super.key});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: () {},
      child: Container(
        height: 120,
        padding: const Pad(all: 15),
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
                    color: context.colors.body,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order.type.title,
                  style: context.styles.body3.copyWith(
                    color: context.colors.body,
                  ),
                ),
                const Gap(5),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Заказчик: ${order.customer.fullName}'),
                      if (order.customer.username.isNotNullAndEmpty)
                        TextSpan(
                          text: ' @${order.customer.username}',
                          style: context.styles.footer3,
                        ),
                    ],
                  ),
                  style: context.styles.footer3.copyWith(
                    color: context.colors.body,
                  ),
                ),
                Text(
                  'Стоимость: ${order.costFrom ? 'от ' : ''}${order.totalCost.formatCurrency()}',
                  style: context.styles.footer3.copyWith(
                    color: context.colors.body,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '#${order.id}',
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
