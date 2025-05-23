part of '../../../../../book_recording_time_screen.dart';

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      builder: (context, state) {
        return FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            '${_duration(state.selectedDuration)} записи на студии',
            style: context.styles.title3.copyWith(fontSize: 14),
          ),
        );
      },
    );
  }

  String _duration(Duration duration) =>
      duration.toHHplural(withMinutes: false);
}
