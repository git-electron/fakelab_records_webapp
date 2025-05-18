part of '../../../home_screen.dart';

class _LoyaltyPoints extends StatelessWidget {
  const _LoyaltyPoints();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          0.formatDecimal(),
          style: context.styles.title2,
        ),
        const Gap(15),
        Assets.images.coin.small.image(
          height: 50,
          width: 50,
        ),
      ],
    );
  }
}
