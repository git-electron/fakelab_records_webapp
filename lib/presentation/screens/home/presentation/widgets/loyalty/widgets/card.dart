part of '../../../home_screen.dart';

class _LoyaltyCard extends StatelessWidget {
  const _LoyaltyCard();

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);

    return Tappable(
      onTap: () => tabsRouter.navigate(const LoyaltyRoute()),
      child: AspectRatio(
        aspectRatio: 6.5 / 4,
        child: Container(
          clipBehavior: Clip.antiAlias,
          padding: const Pad(all: 10, horizontal: 5),
          decoration: ShapeDecoration(
            color: context.colors.card,
            shape: BorderRadius.circular(20).smoothShape(),
            image: DecorationImage(
              image: Assets.images.cardBackground.provider(),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _LoyaltyHeader(),
              _LoyaltyPoints(),
              _LoyaltyMoreButton(),
            ],
          ),
        ),
      ),
    );
  }
}
