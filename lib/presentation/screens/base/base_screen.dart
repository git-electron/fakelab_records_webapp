import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/router/router.gr.dart';
import '../../ui/bottom_nav_bar.dart';

@RoutePage()
class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        LoyaltyRoute(),
        MyOrdersRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              child,
              BottomNavBar(
                activeIndex: tabsRouter.activeIndex,
                onTabTap: (index) => tabsRouter.setActiveIndex(index),
              ),
            ],
          ),
        );
      },
    );
  }
}
