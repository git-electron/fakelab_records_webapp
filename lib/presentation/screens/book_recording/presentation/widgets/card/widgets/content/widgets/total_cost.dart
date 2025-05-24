part of '../../../../../book_recording_screen.dart';

class _DurationButtons extends StatelessWidget {
  const _DurationButtons();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingBloc, BookRecordingState>(
      builder: (context, state) {
        return Padding(
          padding: const Pad(top: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // _DurationButton.minus(state),
              Container(
                width: 32.5,
                alignment: Alignment.center,
                child: Text(
                  _duration(state.selectedDuration),
                  style: context.styles.footer1,
                ),
              ),
              // _DurationButton.plus(state),
            ],
          ),
        );
      },
    );
  }

  String _duration(Duration duration) => duration.toHHplural(
        withMinutes: false,
        isCompact: true,
      );
}
