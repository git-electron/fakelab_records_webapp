part of '../book_recording_time_screen.dart';

const double _toolbarHeight = 70;

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
    final BookRecordingTimeBloc bloc = context.read();

    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      builder: (context, state) {
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
                  child: Text(
                    bloc.selectedDay.toDDmmYYYYwithMonths(
                      withWords: true,
                      isShort: false,
                    ),
                    style: context.styles.body1,
                  ),
                ),
                child: const SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _Desktop extends StatelessWidget {
  const _Desktop();

  @override
  Widget build(BuildContext context) {
    final BookRecordingTimeBloc bloc = context.read();

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
          child: Text(
            bloc.selectedDay.toDDmmYYYYwithMonths(
              withWords: true,
              isShort: false,
            ),
            style: context.styles.body1,
          ),
        ),
        child: const SizedBox(
          height: _toolbarHeight,
          width: double.infinity,
        ),
      ),
    );
  }
}
