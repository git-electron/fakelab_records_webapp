part of '../../../../book_recording_date_screen.dart';

class _DatesGrid extends StatelessWidget {
  const _DatesGrid({
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
    final List<DateTime> datesGrid = DatesGridGenerator.generate(month);

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: datesGrid.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        DateTime date = datesGrid[index];
        bool isCurrentMonth = date.month == month.month;

        if (!isCurrentMonth) return const SizedBox();

        return _DateItem(
          date: date,
          onSelected: onDateSelected,
          isSelected: date == selectedDate,
          isAvailable: isDateAvailablePredicate(date),
        );
      },
    );
  }
}
