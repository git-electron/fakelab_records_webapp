import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdminStaffMemberTile extends StatelessWidget {
  const AdminStaffMemberTile(this.staffMember, {super.key});

  final StaffMember staffMember;

  @override
  Widget build(BuildContext context) {
    // final AdminOrdersBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: () {}, //TODO
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
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // OrderTileStatus(order.status),
                    // CircleDivider(),
                    // Text(
                    //   order.idShort,
                    //   style: _topInfo(context, isMobile: isMobile)
                    //       .copyWith(color: context.colors.subtitle),
                    // ),
                    // CircleDivider(),
                    // Text(
                    //   order.dateCreated.toDDmmYYYYwithMonths(withWords: true),
                    //   style: _topInfo(context, isMobile: isMobile)
                    //       .copyWith(color: context.colors.subtitle),
                    // ),
                  ],
                ),
                Gap(15),
                Row(
                  children: [
                    // Expanded(
                    //   flex: isMobile ? 2 : 4,
                    //   child: Text(
                    //     order.type.title,
                    //     style: _body(context, isMobile: isMobile),
                    //     maxLines: 2,
                    //     overflow: TextOverflow.ellipsis,
                    //   ),
                    // ),
                    Gap(15),
                    // Expanded(
                    //   child: OrderTilePropertyTextSpan(
                    //     icon: Assets.icons.user.gray,
                    //     children: [
                    //       TextSpan(text: order.customer.fullName),
                    //       if (order.customer.username.isNotNullAndEmpty)
                    //         TextSpan(
                    //           text: ' @${order.customer.username}',
                    //           style: _footer(context, isMobile: isMobile),
                    //         ),
                    //     ],
                    //   ),
                    // ),
                    Gap(15),
                    // Expanded(
                    //   child: OrderTilePropertyTextSpan(
                    //     icon: Assets.icons.money.gray,
                    //     children: [
                    //       if (order.costFrom)
                    //         TextSpan(
                    //           text: 'от ',
                    //           style: _footer(context, isMobile: isMobile),
                    //         ),
                    //       TextSpan(
                    //         text: order.totalCost.formatCurrency(),
                    //         style: _orderCostTextStyle(context,
                    //             isMobile: isMobile),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          // if (order.status == OrderStatus.REQUEST)
          //   Container(
          //     height: 10,
          //     width: 10,
          //     decoration: BoxDecoration(
          //       color: context.colors.primary,
          //       shape: BoxShape.circle,
          //       border: Border.all(
          //         width: 5,
          //         color: context.colors.background,
          //         strokeAlign: BorderSide.strokeAlignOutside,
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
