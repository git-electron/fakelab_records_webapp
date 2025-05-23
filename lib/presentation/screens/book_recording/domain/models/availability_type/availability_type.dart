import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';

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

  static AvailabilityType fromTime(DateTime time) {
    final DateTime startTime = DateTime(time.year, time.month, time.day);
    return AvailabilityType.values.lastWhere((type) {
      return time.isAfterOrAtSameMomentAs(
        startTime.copyWith(hour: type.startHour),
      );
    });
  }

  bool isAvailable(DateTime time) =>
      time.hour >= startHour && time.hour < endHour;

  static int openHour = AvailabilityType.morning.startHour;
  static int closeHour = AvailabilityType.evening.endHour;

  static int get maxDuration => closeHour - openHour;

  static DateTime openTimeAt(DateTime date) {
    return DateTime(date.year, date.month, date.day, AvailabilityType.openHour)
        .toUtc();
  }

  static DateTime closeTimeAt(DateTime date) {
    return DateTime(date.year, date.month, date.day, AvailabilityType.closeHour)
        .toUtc();
  }
}
