import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/domain/bloc/admin_orders_filters_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/presentation/widgets/admin_orders_filters.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/presentation/widgets/orders/admin_orders_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class AdminOrdersScreen extends StatelessWidget {
  const AdminOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminOrdersFiltersBloc>(),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdminOrdersFilters(),
          Gap(20),
          AdminOrdersList(),
          Gap(100),
        ],
      ),
    );
  }
}
