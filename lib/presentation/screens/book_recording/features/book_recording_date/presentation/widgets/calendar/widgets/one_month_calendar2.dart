part of '../../../book_recording_date_screen.dart';

class _OneMonthCalendar2 extends StatelessWidget {
  const _OneMonthCalendar2(this.month);

  final DateTime month;

  @override
  Widget build(BuildContext context) {
    final List<DateTime> datesGrid = _generateDatesGrid(month);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                7,
                (index) => Text(
                      ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'][index],
                    )),
          ),
        ),
        const Gap(12),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7),
          shrinkWrap: true,
          itemCount: datesGrid.length,
          itemBuilder: (context, index) {
            DateTime date = datesGrid[index];
            bool isCurrentMonth = date.month == month.month;
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundColor: isCurrentMonth
                    ? context.colors.white
                    : context.colors.transparent,
                child: Text(
                  date.day.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: isCurrentMonth
                        ? context.colors.black
                        : context.colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  List<DateTime> _generateDatesGrid(DateTime month) {
    int numDays = DateTime(month.year, month.month + 1, 0).day;
    int firstWeekday = DateTime(month.year, month.month, 1).weekday % 7;
    List<DateTime> dates = [];

    // Fill previous month's dates
    DateTime previousMonth = DateTime(month.year, month.month - 1);
    int previousMonthLastDay =
        DateTime(previousMonth.year, previousMonth.month + 1, 0).day;
    for (int i = firstWeekday; i > 0; i--) {
      dates.add(DateTime(previousMonth.year, previousMonth.month,
          previousMonthLastDay - i + 1));
    }

    // Fill current month's dates
    for (int day = 1; day <= numDays; day++) {
      dates.add(DateTime(month.year, month.month, day));
    }

    // Fill next month's dates
    int remainingBoxes = 35 - dates.length; // 6 weeks * 7 days
    for (int day = 1; day <= remainingBoxes; day++) {
      dates.add(DateTime(month.year, month.month + 1, day));
    }

    return dates;
  }
}
