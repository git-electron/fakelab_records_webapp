import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/bloc/my_orders_filters_bloc/my_orders_filters_bloc.dart';
import '../../../../core/di/injector.dart';
import '../../../../core/theme/theme_extensions.dart';
import '../../../../features/my_orders/domain/bloc/my_orders_feature_bloc.dart';
import '../../base/widgets/base_app_bar.dart';
import '../domain/bloc/my_orders_bloc/my_orders_bloc.dart';
import 'widgets/my_orders_filters.dart';
import 'widgets/my_orders_header.dart';
import 'widgets/my_orders_screen_my_orders.dart';
import '../../../ui/pages/error_page.dart';
import '../../../ui/pages/loading_page.dart';
import '../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage()
class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => $<MyOrdersBloc>(
            param1: $<MyOrdersFeatureBloc>(param1: false),
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

            return CustomScrollView(
              slivers: [
                TelegramMetaWrapper(builder: (context, meta) {
                  if (meta.isMobile) return const BaseAppBarMobile();
                  return const BaseAppBar();
                }),
                const SliverToBoxAdapter(
                  child: MyOrdersScreenBody(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MyOrdersScreenBody extends StatelessWidget {
  const MyOrdersScreenBody({super.key});

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
