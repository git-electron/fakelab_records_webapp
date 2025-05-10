import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/presentation/widgets/availability/widgets/availability_wrap.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class BookRecordingTimeAvailability extends StatelessWidget {
  const BookRecordingTimeAvailability({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const AvailabilityWrap(type: AvailabilityType.morning),
          const AvailabilityWrap(type: AvailabilityType.afternoon),
          const AvailabilityWrap(type: AvailabilityType.evening),
        ].alternateWith(const Gap(20)),
      ),
    );
  }
}
