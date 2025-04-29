import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdminOrderTile extends StatelessWidget {
  const AdminOrderTile(this.order, {super.key});

  final Order order;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: () {},
      child: Container(
        padding: Pad(all: isMobile ? 15 : 20),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OrderTileStatus(order.status),
                const CircleDivider(),
                Text(
                  order.idShort,
                  style: (isMobile
                          ? context.styles.footer3
                          : context.styles.footer2)
                      .copyWith(color: context.colors.subtitle),
                ),
                const CircleDivider(),
                Text(
                  order.dateCreated.toDDmmYYYYwithMonths(withWords: true),
                  style: (isMobile
                          ? context.styles.footer3
                          : context.styles.footer2)
                      .copyWith(color: context.colors.subtitle),
                ),
              ],
            ),
            const Gap(15),
            Row(
              children: [
                Expanded(
                  flex: isMobile ? 2 : 4,
                  child: Text(
                    order.type.title,
                    style:
                        isMobile ? context.styles.body3 : context.styles.body1,
                  ),
                ),
                const Gap(15),
                Expanded(
                  child: OrderTilePropertyTextSpan(
                    icon: Assets.icons.user.gray,
                    children: [
                      TextSpan(text: order.customer.fullName),
                      if (order.customer.username.isNotNullAndEmpty)
                        TextSpan(
                          text: ' @${order.customer.username}',
                          style: isMobile
                              ? context.styles.footer3
                              : context.styles.footer1,
                        ),
                    ],
                  ),
                ),
                const Gap(15),
                Expanded(
                  child: OrderTilePropertyTextSpan(
                    icon: Assets.icons.money.gray,
                    children: [
                      if (order.costFrom)
                        TextSpan(
                          text: 'от ',
                          style: isMobile
                              ? context.styles.footer3
                              : context.styles.footer1,
                        ),
                      TextSpan(text: order.totalCost.formatCurrency()),
                    ],
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
          style: (isMobile ? context.styles.footer3 : context.styles.footer2)
              .copyWith(color: context.colors.body),
        ),
      ],
    );
  }
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
          height: isMobile ? 20 : 25,
          width: isMobile ? 20 : 25,
        ),
        const Gap(5),
        Expanded(
          child: Text.rich(
            TextSpan(children: children),
            style: (isMobile ? context.styles.footer3 : context.styles.footer1)
                .copyWith(color: context.colors.body),
          ),
        ),
      ],
    );
  }
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
