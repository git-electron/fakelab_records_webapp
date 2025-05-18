part of '../../my_orders_feature.dart';

class _AllOrdersButton extends StatelessWidget {
  const _AllOrdersButton();

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);

    return Tappable(
      onTap: () => tabsRouter.navigate(const MyOrdersRoute()),
      child: Container(
        height: 120,
        padding: const Pad(all: 15),
        decoration: ShapeDecoration(
          color: context.colors.onBackground,
          shape: BorderRadius.circular(20).smoothShape(),
        ),
        alignment: Alignment.center,
        child: Text(
          'Все\nзаказы',
          style: context.styles.footer1.copyWith(
            color: context.colors.background,
          ),
        ),
      ),
    );
  }
}
