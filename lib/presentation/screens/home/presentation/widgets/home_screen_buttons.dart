import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import '../../../../../core/gen/assets.gen.dart';
import '../../../../ui/app_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenButtons extends StatelessWidget {
  const HomeScreenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: Column(
        children: [
          AppButton.primary(
            onTap: () => context.pushRoute(const BookRecordingRoute()),
            text: 'Забронировать запись',
            icon: Assets.icons.calendar.dark,
          ),
          const Gap(10),
          AppButton.secondary(
            onTap: () {},
            isEnabled: false,
            text: 'Заказать услугу',
            icon: Assets.icons.cart.light,
          ),
        ],
      ),
    );
  }
}
