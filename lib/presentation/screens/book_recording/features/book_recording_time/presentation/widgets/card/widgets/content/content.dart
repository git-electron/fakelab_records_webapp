part of '../../../../book_recording_time_screen.dart';

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      builder: (context, state) {
        return const Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Title(),
            _Info(),
            _DurationButtons(),
          ],
        );
      },
    );
  }
}
