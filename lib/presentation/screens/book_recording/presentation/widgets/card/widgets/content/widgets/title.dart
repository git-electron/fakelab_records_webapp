part of '../../../../../book_recording_screen.dart';

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingBloc, BookRecordingState>(
      builder: (context, state) {
        return SizedBox(
          height: 14,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              '${_duration(state.selectedDuration)} записи на студии',
              style: context.styles.title3.copyWith(fontSize: 14),
            ),
          ),
        );
      },
    );
  }

  String _duration(Duration duration) =>
      duration.toHHplural(withMinutes: false);
}
