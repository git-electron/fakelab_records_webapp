part of '../admin_screen.dart';

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(builder: (context, meta) {
      if (meta.isMobile) return const _Mobile();
      return const _Desktop();
    });
  }
}

class _Mobile extends StatelessWidget {
  const _Mobile();

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        final double toolbarHeight = meta.totalSafeAreaInset.top + 60;

        return Container(
          height: toolbarHeight,
          width: double.maxFinite,
          alignment: Alignment.bottomCenter,
          child: Blur(
            blur: 10,
            blurColor: context.colors.background,
            alignment: Alignment.bottomCenter,
            overlay: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  height: meta.contentSafeAreaInset.top,
                  child: const Logo(
                    height: 15,
                    type: LogoType.recordsAdmin,
                  ),
                ),
                const AdminScreenTabBar(),
              ],
            ),
            child: const SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
          ),
        );
      },
    );
  }
}

class _Desktop extends StatelessWidget {
  const _Desktop();

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        final double toolbarHeight = meta.totalSafeAreaInset.top + 70;

        return SizedBox(
          height: toolbarHeight,
          width: double.maxFinite,
          child: Blur(
            blur: 30,
            blurColor: context.colors.background,
            alignment: Alignment.topCenter,
            overlay: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: meta.totalSafeAreaInset.top,
                  padding: Pad(left: meta.totalSafeAreaInset.top + 10),
                  alignment: Alignment.centerLeft,
                  child: Logo(
                    type: LogoType.recordsAdmin,
                    height: meta.totalSafeAreaInset.top * .4,
                  ),
                ),
                const AdminScreenTabBar(),
              ],
            ),
            child: SizedBox(
              height: toolbarHeight,
              width: double.infinity,
            ),
          ),
        );
      },
    );
  }
}
