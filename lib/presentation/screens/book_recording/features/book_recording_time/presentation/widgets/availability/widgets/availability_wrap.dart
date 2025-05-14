import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/domain/bloc/book_recording_time_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

enum AvailabilityType {
  morning(title: 'Утро', endHour: 12),
  afternoon(title: 'День', startHour: 12, endHour: 18),
  evening(title: 'Вечер', startHour: 18);

  const AvailabilityType({
    required this.title,
    this.startHour = 8,
    this.endHour = 23,
  });

  final String title;
  final int startHour;
  final int endHour;

  bool isAvailable(DateTime time) =>
      time.hour >= startHour && time.hour < endHour;
}

class AvailabilityWrap extends StatelessWidget {
  const AvailabilityWrap({
    required this.type,
    super.key,
  });

  final AvailabilityType type;

  @override
  Widget build(BuildContext context) {
    final BookRecordingTimeBloc bloc = context.read();

    return BlocBuilder<BookingsBloc, BookingsState>(
      builder: (context, state) {
        final List<DateTime> availableTimes = _getAvailableTimes(
          bloc.selectedDay,
          state.isTimeAvailable,
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
                children: availableTimes
                    .map((DateTime time) => TimeButton(time))
                    .toList(),
              ),
            ],
          ),
        );
      },
    );
  }

  List<DateTime> _getAvailableTimes(
    DateTime selectedDay,
    bool Function(DateTime) isTimeAvailable,
  ) {
    return List.generate(
      AvailabilityType.evening.endHour - AvailabilityType.morning.startHour,
      (index) {
        return DateTime(
          selectedDay.year,
          selectedDay.month,
          selectedDay.day,
          8 + index,
        );
      },
    ).where(type.isAvailable).where(isTimeAvailable).toList();
  }
}

class TimeButton extends StatelessWidget {
  const TimeButton(this.time, {super.key});

  final DateTime time;

  @override
  Widget build(BuildContext context) {
    final BookRecordingTimeBloc bloc = context.read();

    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      builder: (context, state) {
        return Tappable(
          onTap: () => bloc.add(
            BookRecordingTimeEvent.timeSelected(time),
          ),
          child: Container(
            padding: const Pad(vertical: 10, horizontal: 20),
            decoration: ShapeDecoration(
              color: state.isSelected(time)
                  ? context.colors.onBackground
                  : context.colors.card,
              shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius(
                  cornerRadius: 10,
                  cornerSmoothing: 0.6,
                ),
              ),
            ),
            child: Text(
              time.toHHmm(),
              style: context.styles.footer1.copyWith(
                fontSize: 14,
                color: state.isSelected(time)
                    ? context.colors.background
                    : context.colors.onBackground,
              ),
            ),
          ),
        );
      },
    );
  }
}
