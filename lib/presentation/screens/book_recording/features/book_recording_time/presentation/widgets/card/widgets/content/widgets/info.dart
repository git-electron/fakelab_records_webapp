part of '../../../../../book_recording_time_screen.dart';

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) {
    final BookRecordingTimeBloc bloc = context.read();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _InfoItem(
          icon: Assets.icons.calendar.light,
          text: _date(bloc.selectedDate),
        ),
        BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
          builder: (context, state) {
            final DateTime? selectedTime = state.selectedTime;
            final Duration selectedDuration = state.selectedDuration;

            if (selectedTime == null) return const SizedBox();

            return _InfoItem(
              icon: Assets.icons.clock.light,
              text: _timeInterval(selectedTime, selectedDuration),
            );
          },
        ),
      ],
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
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon.svg(height: 15),
        Text(text, style: context.styles.footer1),
      ],
    );
  }
}
