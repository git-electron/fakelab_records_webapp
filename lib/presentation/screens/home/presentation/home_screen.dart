import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/widgets/examples/home_screen_examples.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/widgets/home_screen_loyalty.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/theme_extensions.dart';
import 'widgets/debug/home_screen_debug_info.dart';
import 'widgets/about/home_screen_about.dart';
import 'widgets/home_screen_app_bar.dart';
import 'widgets/home_screen_buttons.dart';
import 'widgets/equipment/home_screen_equipment.dart';
import 'widgets/home_screen_footer.dart';
import 'widgets/home_screen_orders.dart';
import 'widgets/home_screen_promo_text.dart';
import 'widgets/home_screen_greetings.dart';
import '../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: CustomScrollView(
        slivers: [
          TelegramMetaWrapper(builder: (context, meta) {
            if (meta.isMobile) return const HomeScreenAppBarMobile();
            return const HomeScreenAppBar();
          }),
          SliverToBoxAdapter(
            child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) => const HomeScreenBody(),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

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
          HomeScreenOrders(),
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
