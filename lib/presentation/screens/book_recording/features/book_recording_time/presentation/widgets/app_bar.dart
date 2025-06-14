part of '../book_recording_time_screen.dart';

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
        return Container(
          height: meta.totalSafeAreaInset.top,
          width: double.maxFinite,
          alignment: Alignment.bottomCenter,
          child: Blur(
            blur: 10,
            blurColor: context.colors.background,
            alignment: Alignment.bottomCenter,
            overlay: Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              height: meta.contentSafeAreaInset.top,
              child: BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
                builder: (context, state) {
                  return Text(
                    state.selectedDate.toDDmmYYYYwithMonths(
                      withWords: true,
                      isShort: false,
                    ),
                    style: context.styles.body1,
                  );
                },
              ),
            ),
            child: const SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
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
    return SizedBox(
      height: _toolbarHeight,
      width: double.maxFinite,
      child: Blur(
        blur: 30,
        blurColor: context.colors.background,
        alignment: Alignment.bottomCenter,
        overlay: Container(
          height: _toolbarHeight,
          width: double.maxFinite,
          padding: const Pad(horizontal: 20),
          alignment: Alignment.center,
          child: BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
            builder: (context, state) {
              return Text(
                state.selectedDate.toDDmmYYYYwithMonths(
                  withWords: true,
                  isShort: false,
                ),
                style: context.styles.body1,
              );
            },
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
