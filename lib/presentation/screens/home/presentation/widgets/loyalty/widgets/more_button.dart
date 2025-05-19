part of '../../../home_screen.dart';

class _LoyaltyMoreButton extends StatelessWidget {
  const _LoyaltyMoreButton();

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);

    return Expanded(
      flex: 9,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Tappable(
          onTap: () => tabsRouter.navigate(const LoyaltyRoute()),
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
              Assets.icons.arrowRight.gray.svg(),
            ],
          ),
        ),
      ),
    );
  }
}
