part of '../../book_recording_time_screen.dart';

class _Card extends StatelessWidget {
  const _Card();

  static const double padding = 15;

  @override
  Widget build(BuildContext context) {
    return _AnimatedBuilder(
      builder: (context, size) {
        return Container(
          padding: const Pad(all: padding),
          decoration: ShapeDecoration(
            color: context.colors.card,
            shape: BorderRadius.circular(20).smoothShape(),
          ),
          child: Row(
            spacing: padding,
            children: [
              _Cover(size),
              const _Content(),
            ],
          ),
        );
      },
    );
  }
}

class _AnimatedBuilder extends StatelessWidget {
  const _AnimatedBuilder({required this.builder});

  final Widget Function(BuildContext context, Size size) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      buildWhen: (previous, current) {
        return previous.selectedTime == null && current.selectedTime != null;
      },
      builder: (context, state) {
        final bool isVisible = state.selectedTime != null;

        return IgnorePointer(
          ignoring: !isVisible,
          child: AnimatedSlide(
            offset: Offset(0, isVisible ? 0 : .5),
            curve: kAnimationCurve,
            duration: kAnimationDuration,
            child: AnimatedOpacity(
              opacity: isVisible ? 1 : 0,
              duration: kAnimationDuration,
              child: SizedBox(
                height: isVisible ? null : 0,
                child: MeasureSizeWrapper(
                    shouldMeasureOnce: false,
                    builder: (context, size) {
                      return builder(context, size);
                    }),
              ),
            ),
          ),
        );
      },
    );
  }
}
