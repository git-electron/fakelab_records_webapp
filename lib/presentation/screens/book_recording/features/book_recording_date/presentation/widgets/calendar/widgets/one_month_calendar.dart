import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class OneMonthCalendar extends StatelessWidget {
  const OneMonthCalendar({
    required this.firstDay,
    required this.lastDay,
    required this.focusedDay,
    required this.selectedDay,
    super.key,
    this.eventLoader,
    this.onDaySelected,
  });
  final DateTime firstDay;
  final DateTime lastDay;
  final DateTime focusedDay;
  final DateTime? selectedDay;
  final List<dynamic> Function(DateTime)? eventLoader;
  final Function(DateTime, DateTime)? onDaySelected;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width - 40;

    return TableCalendar(
      availableGestures: AvailableGestures.none,
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        leftChevronVisible: false,
        rightChevronVisible: false,
        headerPadding: const Pad(horizontal: 20, top: 25, bottom: 15),
        titleTextStyle: context.styles.title3.copyWith(fontSize: 20),
        titleTextFormatter: (date, _) => date.toYmmmm().capitalize(),
      ),
      locale: 'ru',
      rowHeight: width / 7,
      daysOfWeekVisible: true,
      daysOfWeekHeight: 20,
      daysOfWeekStyle: DaysOfWeekStyle(
        dowTextFormatter: (date, _) => date.toAbbrWeekday(),
        weekdayStyle: context.styles.footer1,
        weekendStyle: context.styles.footer1.copyWith(
          color: context.colors.primary,
        ),
      ),
      firstDay: firstDay,
      lastDay: lastDay,
      focusedDay: focusedDay,
      selectedDayPredicate: (day) => isSameDay(selectedDay, day),
      eventLoader: eventLoader,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: CalendarStyle(
        tablePadding: const Pad(horizontal: 20),
        markersMaxCount: 1,
        markerSize: width / 7 - 10,
        markersAlignment: Alignment.center,
        markerDecoration: ShapeDecoration(
          shape: SmoothRectangleBorder(
            side: BorderSide(color: context.colors.onBackground, width: 1.5),
            borderRadius: SmoothBorderRadius(
              cornerSmoothing: .6,
              cornerRadius: 20,
            ),
          ),
        ),
        markersAutoAligned: false,
        outsideDaysVisible: false,
        todayDecoration: ShapeDecoration(
          color: context.colors.onBackground,
          shape: SmoothRectangleBorder(
            side: BorderSide(color: context.colors.onBackground, width: 1.5),
            borderRadius: SmoothBorderRadius(
              cornerSmoothing: .6,
              cornerRadius: 20,
            ),
          ),
        ),
        todayTextStyle: context.styles.title3.copyWith(
          fontSize: 12,
          color: context.colors.background,
        ),
        selectedDecoration: ShapeDecoration(
          color: context.colors.primary,
          shape: SmoothRectangleBorder(
            side: BorderSide(color: context.colors.primary, width: 1.5),
            borderRadius: SmoothBorderRadius(
              cornerSmoothing: .6,
              cornerRadius: 20,
            ),
          ),
        ),
        selectedTextStyle: context.styles.title3.copyWith(fontSize: 12),
        defaultTextStyle: context.styles.title3.copyWith(fontSize: 12),
        weekendTextStyle: context.styles.title3.copyWith(fontSize: 12),
        disabledTextStyle: context.styles.title3.copyWith(
          fontSize: 12,
          color: context.colors.footer,
        ),
      ),
      onDaySelected: onDaySelected,
    );
  }
}
