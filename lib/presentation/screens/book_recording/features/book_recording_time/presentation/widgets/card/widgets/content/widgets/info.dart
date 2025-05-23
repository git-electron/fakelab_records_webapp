part of '../../../../../book_recording_time_screen.dart';

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      builder: (context, state) {
        final DateTime? selectedTime = state.selectedTime;
        final Duration selectedDuration = state.selectedDuration;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2,
          children: [
            Row(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _InfoItem(
                  icon: Assets.icons.calendar.light,
                  text: _date(state.selectedDate),
                ),
                if (selectedTime != null)
                  _InfoItem(
                    icon: Assets.icons.clock.light,
                    text: _timeInterval(selectedTime, selectedDuration),
                  ),
              ],
            ),
            _InfoItem(
              icon: Assets.icons.pin.light,
              text: businessStreetAddress,
            ),
          ],
        );
      },
    );
  }

  String _date(DateTime date) {
    return date.toDDmmYYYYwithMonths(
      withWords: true,
      isShort: false,
    );
  }

  String _timeInterval(DateTime time, Duration duration) {
    final DateTime startTime = time;
    final DateTime endTime = time.add(duration);
    return '${_time(startTime)} — ${_time(endTime)}';
  }

  String _time(DateTime time) => time.toHHmm(shoudApplyPaddingToHours: true);
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({
    required this.icon,
    required this.text,
  });

  final SvgGenImage icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon.svg(height: 15),
        Text(text, style: context.styles.footer2),
      ],
    );
  }
}
