part of '../book_recording_screen.dart';

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(builder: (context, meta) {
      if (meta.isMobile) return const _Mobile();
      return const SizedBox();
    });
  }
}

class _Mobile extends StatelessWidget {
  const _Mobile();

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        return Container(
          height: meta.totalSafeAreaInset.top,
          width: double.maxFinite,
          alignment: Alignment.bottomCenter,
          child: Blur(
            blur: 10,
            blurColor: context.colors.background,
            alignment: Alignment.bottomCenter,
            overlay: Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: meta.contentSafeAreaInset.top,
              child: Text('Бронирование', style: context.styles.body1),
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
