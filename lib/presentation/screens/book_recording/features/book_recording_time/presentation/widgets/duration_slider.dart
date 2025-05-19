part of '../book_recording_time_screen.dart';

class _DurationSlider extends StatelessWidget {
  const _DurationSlider();

  @override
  Widget build(BuildContext context) {
    final BookRecordingTimeBloc bloc = context.read();

    return BlocBuilder<BookingsBloc, BookingsState>(
      builder: (context, bookingsState) {
        return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
          builder: (context, state) {
            final List<Duration> availableDurations =
                bookingsState.getAvailableDurations(
              date: bloc.selectedDay,
              time: state.selectedTime ??
                  bloc.selectedDay.toLocal().copyWith(
                        hour: AvailabilityType.morning.startHour,
                      ),
            );

            return Opacity(
              opacity: state.selectedTime == null ? .25 : 1,
              child: Padding(
                padding: const Pad(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const Pad(horizontal: 20),
                      child: Text(
                        'Длительность',
                        style: context.styles.title3.copyWith(fontSize: 16),
                      ),
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        Expanded(
                          child: SliderTheme(
                            data: SliderThemeData(
                              trackHeight: 30,
                              thumbColor: context.colors.white,
                              overlayColor: context.colors.white,
                              activeTrackColor: context.colors.white,
                              inactiveTrackColor: context.colors.card,
                              activeTickMarkColor: context.colors.transparent,
                              inactiveTickMarkColor: context.colors.transparent,
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 7.5,
                                elevation: 0,
                                pressedElevation: 0,
                              ),
                              overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 12.5,
                              ),
                            ),
                            child: Slider(
                              min: 0,
                              max: availableDurations.length <= 1
                                  ? 1
                                  : availableDurations.length - 1,
                              value: availableDurations.length <= 1
                                  ? 1
                                  : availableDurations
                                      .indexOf(state.selectedDuration)
                                      .toDouble(),
                              divisions: availableDurations.length <= 1
                                  ? null
                                  : availableDurations.length - 1,
                              onChanged: (value) {
                                if (availableDurations.length <= 1) return;

                                final int index = value.toInt();
                                bloc.add(
                                    BookRecordingTimeEvent.durationSelected(
                                  availableDurations[index],
                                ));
                              },
                            ),
                          ),
                        ),
                        const Gap(10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.selectedDuration
                                  .toHHplural(withMinutes: false),
                              style:
                                  context.styles.title3.copyWith(fontSize: 16),
                            ),
                            Text(
                              'Макс. ${availableDurations.last.toHHplural(withMinutes: false)}',
                              style: context.styles.footer1,
                            ),
                          ],
                        ),
                        const Gap(10),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
