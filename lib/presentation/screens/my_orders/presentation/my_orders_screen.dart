import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/di/injector.dart';
import '../../../../core/theme/theme_extensions.dart';
import '../../../../features/my_orders/domain/bloc/my_orders_feature_bloc.dart';
import '../../../../features/my_orders/domain/models/limit_policy/limit_policy.dart';
import '../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../../features/my_orders/domain/models/order/order_type.dart';
import '../../../../features/my_orders/my_orders_feature.dart';
import '../../../ui/app_dropdown_button.dart';
import '../../../ui/pages/error_page.dart';
import '../../../ui/pages/loading_page.dart';
import '../../base/widgets/base_app_bar.dart';
import '../domain/bloc/my_orders_bloc/my_orders_bloc.dart';
import '../domain/bloc/my_orders_filters_bloc/my_orders_filters_bloc.dart';

part 'widgets/filters/filters.dart';
part 'widgets/filters/widgets/status_filter.dart';
part 'widgets/filters/widgets/type_filter.dart';
part 'widgets/header.dart';
part 'widgets/my_orders.dart';

@RoutePage()
class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => $<MyOrdersBloc>(
            param1: $<MyOrdersFeatureBloc>(
              param1: MyOrdersLimitPolicy.unlimited,
            ),
          ),
        ),
        BlocProvider(create: (context) => $<MyOrdersFiltersBloc>()),
      ],
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: BlocBuilder<MyOrdersBloc, MyOrdersState>(
          builder: (context, state) {
            if (state.hasError) return const ErrorPage();
            if (state.isLoading) return const LoadingPage();

            return const CustomScrollView(
              slivers: [
                BaseAppBar(),
                _Body(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: context.colors.background,
        padding: const Pad(vertical: 70, bottom: 70),
        child: const Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(),
            _Filters(),
            _MyOrders(),
          ],
        ),
      ),
    );
  }
}
