part of '../my_order_screen.dart';

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(builder: (context, meta) {
      if (meta.isMobile) return const _Mobile();
      return const SliverToBoxAdapter();
    });
  }
}

class _Mobile extends StatelessWidget {
  const _Mobile();

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        return BlocBuilder<MyOrderBloc, MyOrderState>(
          builder: (context, state) {
            return SliverAppBar(
              toolbarHeight: meta.totalSafeAreaInset.top,
              automaticallyImplyLeading: false,
              backgroundColor: context.colors.transparent,
              surfaceTintColor: context.colors.transparent,
              elevation: 0,
              scrolledUnderElevation: 0,
              pinned: true,
              floating: true,
              forceElevated: false,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Blur(
                      blur: 10,
                      blurColor: context.colors.background,
                      alignment: Alignment.bottomCenter,
                      overlay: Container(
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        height: meta.contentSafeAreaInset.top,
                        child: Text(
                          'Заказ ${state.order!.idShort}',
                          style: context.styles.body1,
                        ),
                      ),
                      child: const SizedBox(
                        height: double.maxFinite,
                        width: double.maxFinite,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
