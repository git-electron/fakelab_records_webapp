part of '../../../../book_recording_date_screen.dart';

class _WeekdaysHeader extends StatelessWidget {
  const _WeekdaysHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: _Weekday.values.map(_buildWeekday).toList(),
    );
  }

  Widget _buildWeekday(_Weekday weekday) {
    return Builder(builder: (context) {
      return Expanded(
        child: Center(
          child: Text(
            weekday.title,
            style: _style(context, weekday: weekday),
          ),
        ),
      );
    });
  }

  TextStyle _style(BuildContext context, {required _Weekday weekday}) =>
      weekday.isWeekend ? _weekendStyle(context) : _weekdayStyle(context);

  TextStyle _weekdayStyle(BuildContext context) => context.styles.footer1;

  TextStyle _weekendStyle(BuildContext context) =>
      context.styles.footer1.copyWith(
        color: context.colors.primary,
      );
}

enum _Weekday {
  monday('пн'),
  tuesday('вт'),
  wednesday('ср'),
  thursday('чт'),
  friday('пт'),
  saturday('сб', isWeekend: true),
  sunday('вс', isWeekend: true);

  const _Weekday(this.title, {this.isWeekend = false});

  final String title;
  final bool isWeekend;
}
