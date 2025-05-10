import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_date/domain/bloc/book_recording_date_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import 'widgets/one_month_calendar.dart';

class BookRecordingCalendar extends StatelessWidget {
  const BookRecordingCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    final BookRecordingDateBloc bloc = context.read();
    final now = DateTime.now();

    return BlocBuilder<BookingsBloc, BookingsState>(
      builder: (context, state) {
        return BlocBuilder<BookRecordingDateBloc, BookRecordingDateState>(
          builder: (context, bookRecordingState) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                final DateTime? selectedDay = bookRecordingState.selectedDay;
                final DateTime focusedDay =
                    DateTime(now.year, now.month + index, now.day);

                return OneMonthCalendar(
                  key: ValueKey(state.bookings),
                  firstDay: now,
                  focusedDay: focusedDay,
                  lastDay: now.add(const Duration(days: 30 * 3)),
                  selectedDay: selectedDay,
                  eventLoader: (DateTime dateTime) {
                    return [
                      if (state.isDayAvailable(dateTime) &&
                          !isSameDay(dateTime, now) &&
                          !isSameDay(dateTime, selectedDay))
                        dateTime
                    ];
                  },
                  onDaySelected: (selectedDay, _) {
                    if (!state.isDayAvailable(selectedDay)) return;
                    bloc.add(BookRecordingDateEvent.daySelected(selectedDay));
                    context.pushRoute(BookRecordingTimeRoute(
                      selectedDay: selectedDay,
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
