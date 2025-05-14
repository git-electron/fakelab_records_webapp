import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/presentation/widgets/availability/widgets/availability_wrap.dart';
import 'package:flutter/widgets.dart';

class BookRecordingTimeAvailability extends StatelessWidget {
  const BookRecordingTimeAvailability({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Pad(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AvailabilityWrap(type: AvailabilityType.morning),
          AvailabilityWrap(type: AvailabilityType.afternoon),
          AvailabilityWrap(type: AvailabilityType.evening),
        ],
      ),
    );
  }
}
