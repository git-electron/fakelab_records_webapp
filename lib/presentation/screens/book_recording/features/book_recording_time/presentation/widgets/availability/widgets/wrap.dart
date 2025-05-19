part of '../../../book_recording_time_screen.dart';

class _Wrap extends StatelessWidget {
  const _Wrap(this.type);

  final AvailabilityType type;

  @override
  Widget build(BuildContext context) {
    final BookRecordingTimeBloc bloc = context.read();

    return BlocBuilder<BookingsBloc, BookingsState>(
      builder: (context, state) {
        final List<DateTime> availableTimes = state.getAvailableTimes(
          date: bloc.selectedDay,
          type: type,
        );

        if (availableTimes.isEmpty) return const SizedBox();

        return Padding(
          padding: const Pad(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                type.title,
                style: context.styles.title3.copyWith(fontSize: 20),
              ),
              const Gap(10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: availableTimes.map(_Time.button).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
