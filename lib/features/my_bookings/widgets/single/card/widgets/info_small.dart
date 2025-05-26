part of '../../../../my_bookings_feature.dart';

class _InfoSmall extends StatelessWidget {
  const _InfoSmall(this.booking);

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(booking.idShort, style: _style(context)),
        Text(booking.status.title, style: _style(context)),
        Text(_dateTime, style: _style(context)),
      ].alternateWith(const _CircleDivider()),
    );
  }

  TextStyle _style(BuildContext context) => context.styles.footer3.copyWith(
        color: context.colors.subtitle,
      );

  String get _dateTime => '$_date, $_timeInterval';

  String get _date {
    return booking.date.toDDmmYYYYwithMonths(
      withWords: true,
      isShort: false,
    );
  }

  String get _timeInterval {
    final DateTime startTime = booking.date;
    final DateTime endTime = startTime.add(booking.duration);
    return '${_time(startTime)} — ${_time(endTime)}';
  }

  String _time(DateTime time) => time.toHHmm();
}

class _CircleDivider extends StatelessWidget {
  const _CircleDivider();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 3,
      margin: const Pad(horizontal: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.colors.footer.copyWithOpacity(.5),
      ),
    );
  }
}
