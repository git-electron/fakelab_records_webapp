import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/constants/mock.dart';
import '../../../../../core/extensions/num_extensions.dart';
import '../../../../../core/gen/assets.gen.dart';
import '../../../../../core/theme/theme_extensions.dart';
import '../../../../../features/my_orders_horizontal_scroll/my_orders_horizontal_scroll.dart';
import '../../../../ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenSummary extends StatelessWidget {
  const HomeScreenSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (Mock.orders.isNotEmpty)
          Padding(
            padding: const Pad(bottom: 20),
            child: MyOrdersHorizontalScroll(orders: Mock.orders),
          ),
        const Padding(
          padding: Pad(horizontal: 20),
          child: LoyaltyCard(),
        ),
      ],
    );
  }
}

class LoyaltyCard extends StatelessWidget {
  const LoyaltyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 6.5 / 4,
        child: Container(
          clipBehavior: Clip.antiAlias,
          padding: const Pad(all: 10, horizontal: 5),
          decoration: ShapeDecoration(
            color: context.colors.card,
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 20,
                cornerSmoothing: 0.6,
              ),
            ),
            image: DecorationImage(
              image: Assets.images.cardBackground.provider(),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Твои баллы',
                    style: context.styles.subtitle3.copyWith(
                      color: context.colors.title,
                    ),
                  ),
                ),
              ),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    1500.formatCurrency(),
                    style: context.styles.title2,
                  ),
                  const Gap(15),
                  Assets.images.coin.small.image(
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              const Gap(15),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Tappable(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Подробнее',
                          style: context.styles.body3.copyWith(
                            color: context.colors.subtitle,
                          ),
                        ),
                        const Gap(5),
                        Assets.icons.arrowRightGray.svg(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
