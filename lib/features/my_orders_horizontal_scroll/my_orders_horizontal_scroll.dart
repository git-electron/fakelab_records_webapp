import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/utils/scroll_physics/snap_bounce_scroll_physics.dart';
import 'package:fakelab_records_webapp/features/my_orders_horizontal_scroll/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyOrdersHorizontalScroll extends StatelessWidget {
  const MyOrdersHorizontalScroll({
    this.itemsCount = 25,
    super.key,
  });

  final int itemsCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        itemCount: itemsCount,
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        physics: const SnapBounceScrollPhysics(itemWidth: 210),
        separatorBuilder: (context, index) => const Gap(10),
        itemBuilder: (context, index) => Padding(
          padding: Pad(
            left: index == 0 ? 20 : 0,
            right: index == itemsCount - 1 ? 20 : 0,
          ),
          child: const OrderCard(),
        ),
      ),
    );
  }
}
