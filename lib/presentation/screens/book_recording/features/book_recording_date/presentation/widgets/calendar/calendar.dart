part of '../../book_recording_date_screen.dart';

class _Calendar extends StatelessWidget {
  const _Calendar();

  @override
  Widget build(BuildContext context) {
    final BookRecordingDateBloc bloc = context.read();
    final now = DateTime.now();

    return BlocBuilder<BookingsBloc, BookingsState>(
      builder: (context, state) {
        return BlocBuilder<BookRecordingDateBloc, BookRecordingDateState>(
          builder: (context, bookRecordingState) {
            return Column(
              children: List.generate(3, (index) {
                final month = DateTime(now.year, now.month + index, now.day);
                return _OneMonthCalendar2(
                  month: month,
                  isAvailablePredicate: (date) => state.isDayAvailable(date),
                );
              }),
            );
          },
        );
      },
    );
  }
}
