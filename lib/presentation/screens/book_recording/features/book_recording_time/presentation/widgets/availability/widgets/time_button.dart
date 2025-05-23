part of '../../../book_recording_time_screen.dart';

class _Time extends StatelessWidget {
  const _Time.button(this.time);

  final DateTime time;

  @override
  Widget build(BuildContext context) {
    final BookRecordingTimeBloc bloc = context.read();

    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      builder: (context, state) {
        return Tappable(
          onTap: () => bloc.add(BookRecordingTimeEvent.timeSelected(time)),
          child: Container(
            padding: const Pad(vertical: 8, horizontal: 16),
            decoration: ShapeDecoration(
              color: state.isSelected(time)
                  ? context.colors.onBackground
                  : context.colors.card,
              shape: BorderRadius.circular(8).smoothShape(),
            ),
            child: Text(
              time.toHHmm(),
              style: context.styles.footer1.copyWith(
                fontSize: 12,
                color: state.isSelected(time)
                    ? context.colors.background
                    : context.colors.onBackground,
              ),
            ),
          ),
        );
      },
    );
  }
}
