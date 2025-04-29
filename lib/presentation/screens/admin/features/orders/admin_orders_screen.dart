import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/widgets/admin_orders_screen_orders.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdminOrdersScreen extends StatelessWidget {
  const AdminOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(20),
        AdminOrdersScreenOrders(),
        Gap(100),
      ],
    );
  }
}
