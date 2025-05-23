part of '../../book_recording_time_screen.dart';

class _Card extends StatelessWidget {
  const _Card();

  @override
  Widget build(BuildContext context) {
    return _AnimatedWrapper(
      child: Container(
        padding: const Pad(all: 20),
        margin: const Pad(horizontal: 20),
        decoration: ShapeDecoration(
          color: context.colors.card,
          shape: BorderRadius.circular(20).smoothShape(),
        ),
        child: const Row(
          spacing: 20,
          children: [
            _Cover(),
            _Content(),
          ],
        ),
      ),
    );
  }
}

class _AnimatedWrapper extends StatelessWidget {
  const _AnimatedWrapper({required this.child});

  final Widget child;

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
              child: child,
            ),
          ),
        );
      },
    );
  }
}
