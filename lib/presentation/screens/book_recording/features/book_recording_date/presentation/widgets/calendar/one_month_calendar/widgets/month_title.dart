part of '../../../../book_recording_date_screen.dart';

class _MonthTitle extends StatelessWidget {
  const _MonthTitle(this.month);

  final DateTime month;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(bottom: 10),
      child: Text(
        _Month.getTitle(month),
        style: context.styles.title3.copyWith(fontSize: 20),
      ),
    );
  }
}

enum _Month {
  january('январь'),
  february('февраль'),
  march('март'),
  april('апрель'),
  may('май'),
  june('июнь'),
  july('июль'),
  august('август'),
  september('сентябрь'),
  october('октябрь'),
  november('ноябрь'),
  december('декабрь');

  const _Month(this.title);

  final String title;

  static String getTitle(DateTime month) =>
      _Month.values[month.month - 1].title.capitalize();
}
