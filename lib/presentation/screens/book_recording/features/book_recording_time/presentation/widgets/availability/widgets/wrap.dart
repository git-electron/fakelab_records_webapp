part of '../../../book_recording_time_screen.dart';

class _Wrap extends StatelessWidget {
  const _Wrap(this.type);

  final AvailabilityType type;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      builder: (context, state) {
        final List<DateTime> availableTimes = state.getAvailableTimes(type);

        if (availableTimes.isEmpty) return const SizedBox();

        return Padding(
          padding: const Pad(bottom: 20),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                type.title,
                style: context.styles.title3.copyWith(fontSize: 20),
              ),
              Wrap(
                spacing: 5,
                runSpacing: 5,
                children: availableTimes.map(_Time.button).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
