import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/bloc/my_orders_feature_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/base/widgets/base_app_bar.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/bloc/my_orders_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/presentation/widgets/my_orders_filters.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/presentation/widgets/my_orders_header.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/presentation/widgets/my_orders_screen_my_orders.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage()
class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<MyOrdersBloc>(
        param1: $<MyOrdersFeatureBloc>(param1: false),
      ),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: BlocBuilder<MyOrdersBloc, MyOrdersState>(
          builder: (context, state) {
            if (state.hasError) return const ErrorPage();
            if (state.isLoading) return const LoadingPage();

            return CustomScrollView(
              slivers: [
                TelegramMetaWrapper(builder: (context, meta) {
                  if (meta.isMobile) return const BaseAppBarMobile();
                  return const BaseAppBar();
                }),
                const SliverToBoxAdapter(
                  child: MyOrdersScreenContent(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MyOrdersScreenContent extends StatelessWidget {
  const MyOrdersScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const Pad(top: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(55),
          MyOrdersHeader(),
          Gap(20),
          MyOrdersFilters(),
          Gap(20),
          MyOrdersScreenMyOrders(),
          Gap(140),
        ],
      ),
    );
  }
}
