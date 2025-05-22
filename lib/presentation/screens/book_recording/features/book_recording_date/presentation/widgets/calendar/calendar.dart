part of '../../book_recording_date_screen.dart';

class _Calendar extends StatelessWidget {
  const _Calendar();

  @override
  Widget build(BuildContext context) {
    final BookRecordingDateBloc bloc = context.read();
    final now = DateTime.now();

    return Column(
      children: List.generate(3, (index) {
        final month = DateTime(now.year, now.month + index, now.day);
        return _OneMonthCalendar2(month);
      }),
    );

    return BlocBuilder<BookingsBloc, BookingsState>(
      builder: (context, state) {
        return BlocBuilder<BookRecordingDateBloc, BookRecordingDateState>(
          builder: (context, bookRecordingState) {
            final DateTime? selectedDay = bookRecordingState.selectedDay;
            return ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                final DateTime focusedDay = DateTime(
                  now.year,
                  now.month + index,
                  now.day,
                );

                return _OneMonthCalendar2(focusedDay);

                return _OneMonthCalendar(
                  key: ValueKey(state.bookings),
                  firstDay: now,
                  focusedDay: focusedDay,
                  lastDay: now.add(const Duration(days: 30 * 3)),
                  selectedDay: selectedDay,
                  eventLoader: (dateTime) => [dateTime],
                  // eventLoader: (DateTime dateTime) {
                  //   return [
                  //     if (state.isDayAvailable(dateTime) &&
                  //         !isSameDay(dateTime, now) &&
                  //         !isSameDay(dateTime, selectedDay))
                  //       dateTime
                  //   ];
                  // },
                  onDaySelected: (selectedDate, _) {
                    if (!state.isDayAvailable(selectedDate)) return;
                    bloc.add(BookRecordingDateEvent.daySelected(selectedDate));
                    context.pushRoute(BookRecordingTimeRoute(
                      selectedDate: selectedDate,
                      bookingsBloc: context.read(),
                    ));
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
