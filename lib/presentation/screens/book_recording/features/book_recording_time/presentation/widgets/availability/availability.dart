part of '../../book_recording_time_screen.dart';

class _Availability extends StatelessWidget {
  const _Availability();

  @override
  Widget build(BuildContext context) {
    final BookRecordingTimeBloc bloc = context.read();

    return Expanded(
      child: SingleChildScrollView(
        controller: bloc.availabilityController,
        clipBehavior: Clip.none,
        child: const SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Wrap(AvailabilityType.morning),
              _Wrap(AvailabilityType.afternoon),
              _Wrap(AvailabilityType.evening),
            ],
          ),
        ),
      ),
    );
  }
}
