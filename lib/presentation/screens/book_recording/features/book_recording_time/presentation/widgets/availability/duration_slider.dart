import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/duration_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/domain/bloc/book_recording_time_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/presentation/widgets/availability/widgets/availability_wrap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class DurationSlider extends StatelessWidget {
  const DurationSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final BookRecordingTimeBloc bloc = context.read();

    return BlocBuilder<BookingsBloc, BookingsState>(
      builder: (context, bookingsState) {
        return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
          builder: (context, state) {
            if (state.selectedTime == null) return const SizedBox();

            final List<Duration> availableDurations = _getAvailableDurations(
              bloc.selectedDay,
              state.selectedTime!,
              (time, duration) => bookingsState.isTimeAvailable(
                time,
                duration: duration,
              ),
            );

            if (availableDurations.length <= 1) return const SizedBox();

            return Padding(
              padding: const Pad(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 15,
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
                        max: availableDurations.length - 1,
                        value: availableDurations
                            .indexOf(state.selectedDuration)
                            .toDouble(),
                        divisions: availableDurations.length - 1,
                        onChanged: (value) {
                          final int index = value.toInt();
                          bloc.add(BookRecordingTimeEvent.durationSelected(
                            availableDurations[index],
                          ));
                        },
                      ),
                    ),
                  ),
                  const Gap(10),
                  Text(
                    state.selectedDuration.toHHplural(withMinutes: false),
                    style: context.styles.title3.copyWith(fontSize: 16),
                  ),
                  const Gap(10),
                ],
              ),
            );
          },
        );
      },
    );
  }

  List<Duration> _getAvailableDurations(
    DateTime selectedDay,
    DateTime selectedTime,
    bool Function(DateTime, Duration) isTimeAvailable,
  ) {
    return List.generate(
      AvailabilityType.evening.endHour - AvailabilityType.morning.startHour,
      (index) => Duration(hours: index + 1),
    ).where((duration) => isTimeAvailable(selectedTime, duration)).toList();
  }
}
