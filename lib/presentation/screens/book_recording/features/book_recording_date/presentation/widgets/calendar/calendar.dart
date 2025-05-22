part of '../../book_recording_date_screen.dart';

class _Calendar extends StatelessWidget {
  const _Calendar();

  @override
  Widget build(BuildContext context) {
    final BookRecordingDateBloc bloc = context.read();
    final now = DateTime.now();

    return BlocBuilder<BookRecordingDateBloc, BookRecordingDateState>(
      builder: (context, state) {
        return Column(
          spacing: 50,
          children: List.generate(3, (index) {
            final month = DateTime(now.year, now.month + index, now.day);
            return _OneMonthCalendar(
              month: month,
              onDateSelected: (date) {
                bloc.add(BookRecordingDateEvent.dateSelected(date));
              },
              selectedDate: state.selectedDate,
              isDateAvailablePredicate: state.isDateAvailable,
            );
          }),
        );
      },
    );
  }
}
