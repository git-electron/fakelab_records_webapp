import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/domain/bloc/admin_orders_filters_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/empty_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'admin_order_tile.dart';

class AdminOrdersList extends StatelessWidget {
  const AdminOrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: BlocBuilder<AdminOrdersBloc, AdminOrdersState>(
        builder: (context, state) {
          return BlocBuilder<AdminOrdersFiltersBloc, AdminOrdersFiltersState>(
            builder: (context, filtersState) {
              if (state.isLoading) return const LoadingPage(height: 500);
              if (state.hasError) {
                return ErrorPage(message: state.message, height: 500);
              }

              final List<Order> orders =
                  filtersState.filteredOrders(state.orders);

              if (orders.isEmpty) return const EmptyPage(height: 500);

              return ListView.separated(
                itemCount: orders.length + 1,
                itemBuilder: (context, index) {
                  if (index == orders.length) return const Gap(20);

                  final Order order = orders[index];

                  return AdminOrderTile(order);
                },
                separatorBuilder: (context, index) => const Gap(5),
              );
            },
          );
        },
      ),
    );
  }
}
