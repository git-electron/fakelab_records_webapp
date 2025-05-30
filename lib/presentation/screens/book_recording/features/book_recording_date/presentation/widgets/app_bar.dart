part of '../book_recording_date_screen.dart';

const double _toolbarHeight = 50;

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
          flexibleSpace: Align(
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
                  'Выбрать дату',
                  style: context.styles.body1,
                ),
              ),
              child: const SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
              ),
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
    return SliverAppBar(
      pinned: true,
      toolbarHeight: _toolbarHeight,
      automaticallyImplyLeading: false,
      backgroundColor: context.colors.transparent,
      surfaceTintColor: context.colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      forceElevated: false,
      flexibleSpace: Blur(
        blur: 30,
        blurColor: context.colors.background,
        alignment: Alignment.bottomCenter,
        overlay: Container(
          height: _toolbarHeight,
          width: double.maxFinite,
          padding: const Pad(horizontal: 20),
          alignment: Alignment.center,
          child: Text(
            'Выбрать дату',
            style: context.styles.body1,
          ),
        ),
        child: const SizedBox(
          height: _toolbarHeight,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
