import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/widgets/admin_orders_filters.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/widgets/orders/admin_orders_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdminOrdersScreen extends StatelessWidget {
  const AdminOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AdminOrdersFilters(),
        Gap(20),
        AdminOrdersList(),
        Gap(100),
      ],
    );
  }
}
