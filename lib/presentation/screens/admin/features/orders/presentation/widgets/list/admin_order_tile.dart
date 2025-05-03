import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:fakelab_records_webapp/presentation/ui/avatar/avatar.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AdminOrderTile extends StatelessWidget {
  const AdminOrderTile(this.order, {super.key});

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
                      style: _topInfo(context, isMobile: isMobile)
                          .copyWith(color: context.colors.subtitle),
                    ),
                    const CircleDivider(),
                    Text(
                      order.dateCreated.toDDmmYYYYwithMonths(withWords: true),
                      style: _topInfo(context, isMobile: isMobile)
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
                        style: _body(context, isMobile: isMobile),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    OrderTileAssignee(order.assignee),
                    const Gap(15),
                    Expanded(
                      child: OrderTilePropertyTextSpan(
                        icon: Assets.icons.user.gray,
                        children: [
                          TextSpan(text: order.customer.fullName),
                          if (order.customer.username.isNotNullAndEmpty)
                            TextSpan(
                              text: ' @${order.customer.username}',
                              style: _footer(context, isMobile: isMobile),
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
                              style: _footer(context, isMobile: isMobile),
                            ),
                          TextSpan(
                            text: order.totalCost.formatCurrency(),
                            style: _orderCostTextStyle(context,
                                isMobile: isMobile),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (order.status == OrderStatus.REQUEST)
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

  TextStyle _body(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.body3 : context.styles.body1;

  TextStyle _footer(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer1;

  TextStyle _topInfo(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer2;

  TextStyle? _orderCostTextStyle(
    BuildContext context, {
    required bool isMobile,
  }) {
    final bool shouldReplaceStyle = [
      OrderStatus.COMPLETED,
      OrderStatus.CANCELLED,
    ].contains(order.status);

    if (!shouldReplaceStyle) return null;

    final TextStyle style = _footer(context, isMobile: isMobile);
    return style.copyWith(
      color: order.status.color,
      decoration: _textDecoration,
      decorationColor: order.status.color,
    );
  }

  TextDecoration? get _textDecoration {
    return order.status == OrderStatus.CANCELLED
        ? TextDecoration.lineThrough
        : null;
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
          height: isMobile ? 20 : 25,
          width: isMobile ? 20 : 25,
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

class OrderTileAssignee extends StatelessWidget {
  const OrderTileAssignee(
    this.assignee, {
    super.key,
  });

  final StaffMember? assignee;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    if (isMobile) return const SizedBox();
    if (assignee == null) return const Expanded(child: SizedBox());

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (assignee!.photoUrl.isNotNullAndEmpty)
            Padding(
              padding: const Pad(right: 10),
              child: Avatar(
                photoUrl: assignee!.photoUrl!,
                size: isMobile ? 20 : 30,
              ),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  assignee!.fullName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: _footer(context, isMobile: isMobile)
                      .copyWith(color: context.colors.body),
                ),
                if (assignee!.username.isNotNullAndEmpty)
                  Text(
                    assignee!.username!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: _footer(context, isMobile: isMobile),
                  ),
              ],
            ),
          ),
        ],
      ),
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
