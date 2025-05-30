part of '../../../my_booking_screen.dart';

class _Properties extends StatelessWidget {
  const _Properties();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyBookingBloc, MyBookingState>(
      builder: (context, state) {
        final Booking booking = state.booking!;

        return Column(
          spacing: 5,
          children: [
            Row(
              spacing: 10,
              children: [
                _Property(
                  text: _date(booking),
                  icon: Assets.icons.calendar.light,
                ),
                _Property(
                  text: _timeInterval(booking),
                  icon: Assets.icons.clock.light,
                ),
              ],
            ),
            _Property(
              text: businessStreetAddress,
              icon: Assets.icons.pin.light,
            ),
          ],
        );
      },
    );
  }

  String _date(Booking booking) {
    return booking.date.toDDmmYYYYwithMonths(
      withWords: true,
      isShort: false,
    );
  }

  String _timeInterval(Booking booking) {
    final DateTime startTime = booking.date;
    final DateTime endTime = startTime.add(booking.duration);
    return '${_time(startTime)} — ${_time(endTime)}';
  }

  String _time(DateTime time) => time.toHHmm();
}

class _Property extends StatelessWidget {
  const _Property({
    required this.text,
    required this.icon,
  });

  final String text;
  final SvgGenImage icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        icon.svg(height: 20),
        Text(text, style: context.styles.footer1),
      ],
    );
  }
}
