import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/bloc/my_orders_feature_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/domain/bloc/home_bloc/home_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/widgets/examples/home_screen_examples.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/widgets/home_screen_loyalty.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/widgets/home_screen_my_orders.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/theme_extensions.dart';
import 'widgets/debug/home_screen_debug_info.dart';
import 'widgets/about/home_screen_about.dart';
import '../../base/widgets/base_app_bar.dart';
import 'widgets/home_screen_buttons.dart';
import 'widgets/equipment/home_screen_equipment.dart';
import 'widgets/home_screen_footer.dart';
import 'widgets/home_screen_promo_text.dart';
import 'widgets/home_screen_greetings.dart';
import '../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<HomeBloc>(
        param1: $<MyOrdersFeatureBloc>(param1: true),
      ),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: BlocBuilder<HomeBloc, HomeState>(
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
                  child: HomeScreenContent(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const Pad(top: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(55),
          HomeScreenDebugInfo(),
          HomeScreenGreetings(),
          Gap(20),
          HomeScreenMyOrders(),
          HomeScreenLoyalty(),
          Gap(40),
          HomeScreenButtons(),
          Gap(60),
          HomeScreenAbout(),
          Gap(60),
          HomeScreenEquipment(),
          Gap(40),
          HomeScreenExamples(),
          Gap(40),
          HomeScreenPromoText(),
          Gap(20),
          HomeScreenButtons(),
          Gap(40),
          HomeScreenFooter(),
        ],
      ),
    );
  }
}
