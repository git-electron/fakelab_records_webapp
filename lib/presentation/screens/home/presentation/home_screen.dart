import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/widgets/debug/home_screen_debug_info.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/widgets/home_screen_app_bar.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/widgets/home_screen_greetings.dart';
import 'package:fakelab_records_webapp/presentation/screens/home/presentation/widgets/home_screen_summary.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: const SafeAreaWrapper(
        top: true,
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            Expanded(child: HomeScreenBody()),
            HomeScreenAppBar(),
          ],
        ),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Padding(
        padding: Pad(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(55),
            HomeScreenDebugInfo(),
            HomeScreenGreetings(),
            Gap(20),
            HomeScreenSummary(),
            Gap(55),
            HomeScreenGreetings(),
            Gap(20),
            HomeScreenSummary(),
            Gap(55),
            HomeScreenGreetings(),
            Gap(20),
            HomeScreenSummary(),
          ],
        ),
      ),
    );
  }
}
