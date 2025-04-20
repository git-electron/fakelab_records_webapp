import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/constants/mock.dart';
import 'package:fakelab_records_webapp/features/my_orders_horizontal_scroll/my_orders_horizontal_scroll.dart';
import 'package:flutter/material.dart';

class HomeScreenOrders extends StatelessWidget {
  const HomeScreenOrders({super.key});

  @override
  Widget build(BuildContext context) {
    if (Mock.orders.isNotEmpty) {
      return Padding(
        padding: const Pad(bottom: 20),
        child: MyOrdersHorizontalScroll(orders: Mock.orders),
      );
    }
    return const SizedBox();
  }
}
