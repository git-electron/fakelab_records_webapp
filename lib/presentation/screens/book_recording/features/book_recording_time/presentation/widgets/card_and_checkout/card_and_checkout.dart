part of '../../book_recording_time_screen.dart';

class _CardAndCheckout extends StatelessWidget {
  const _CardAndCheckout();

  @override
  Widget build(BuildContext context) {
    return const _AnimatedWrapper(
      child: Padding(
        padding: Pad(horizontal: 20),
        child: Column(
          spacing: 10,
          children: [
            _Card(),
            _Checkout(),
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
