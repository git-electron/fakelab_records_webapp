part of '../../../book_recording_date_screen.dart';

class _OneMonthCalendar extends StatelessWidget {
  const _OneMonthCalendar({
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
    final double width = size.width - 20;

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
        tablePadding: const Pad(horizontal: 10),
        markersMaxCount: 1,
        markerSize: width / 7 - 10,
        markersAlignment: Alignment.center,
        markerDecoration: ShapeDecoration(
          shape: BorderRadius.circular(10).smoothShape(
            side: BorderSide(color: context.colors.onBackground, width: 1.5),
          ),
        ),
        markersAutoAligned: false,
        outsideDaysVisible: false,
        todayDecoration: ShapeDecoration(
          color: context.colors.onBackground,
          shape: BorderRadius.circular(10).smoothShape(
            side: BorderSide(color: context.colors.onBackground, width: 1.5),
          ),
        ),
        todayTextStyle: context.styles.title3.copyWith(
          fontSize: 12,
          color: context.colors.background,
        ),
        selectedDecoration: ShapeDecoration(
          color: context.colors.primary,
          shape: BorderRadius.circular(10).smoothShape(
            side: BorderSide(color: context.colors.primary, width: 1.5),
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
