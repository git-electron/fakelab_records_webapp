part of '../../../book_recording_date_screen.dart';

class _OneMonthCalendar extends StatelessWidget {
  const _OneMonthCalendar({
    required this.month,
    required this.selectedDate,
    required this.onDateSelected,
    required this.isDateAvailablePredicate,
  });

  final DateTime month;
  final DateTime? selectedDate;
  final void Function(DateTime) onDateSelected;
  final bool Function(DateTime) isDateAvailablePredicate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _MonthTitle(month),
          const _WeekdaysHeader(),
          _DatesGrid(
            month: month,
            selectedDate: selectedDate,
            onDateSelected: onDateSelected,
            isDateAvailablePredicate: isDateAvailablePredicate,
          ),
        ],
      ),
    );
  }
}
