import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
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
            onTap: () {},
            text: 'Забронировать запись',
            icon: Assets.icons.calendarBlack,
          ),
          const Gap(10),
          AppButton.secondary(
            onTap: () {},
            text: 'Заказать услугу',
            icon: Assets.icons.cart,
          ),
        ],
      ),
    );
  }
}
