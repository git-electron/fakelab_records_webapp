import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import '../../core/utils/scroll_physics/snap_bounce_scroll_physics.dart';
import 'widgets/order_card.dart';
import '../../presentation/screens/my_orders/domain/models/order/order.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyOrdersHorizontalScroll extends StatelessWidget {
  const MyOrdersHorizontalScroll({
    required this.orders,
    super.key,
  });

  final List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        itemCount: orders.length,
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        physics: const SnapBounceScrollPhysics(itemWidth: 210),
        separatorBuilder: (context, index) => const Gap(10),
        itemBuilder: (context, index) => Padding(
          padding: Pad(
            left: index == 0 ? 20 : 0,
            right: index == orders.length - 1 ? 20 : 0,
          ),
          child: OrderCard(orders[index]),
        ),
      ),
    );
  }
}
