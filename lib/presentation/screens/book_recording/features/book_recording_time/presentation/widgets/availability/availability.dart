part of '../../book_recording_time_screen.dart';

class _Availability extends StatelessWidget {
  const _Availability();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: Pad(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Wrap(AvailabilityType.morning),
            _Wrap(AvailabilityType.afternoon),
            _Wrap(AvailabilityType.evening),
          ],
        ),
      ),
    );
  }
}
