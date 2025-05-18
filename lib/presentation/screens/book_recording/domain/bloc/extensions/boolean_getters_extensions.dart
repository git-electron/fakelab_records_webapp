part of '../bookings_bloc.dart';

extension BooleanExtensions on BookingsState {
  bool isDayAvailable(DateTime date) {
    final List<Booking>? dateBookings = getDateBookings(date);

    if (dateBookings.isNullOrEmpty) return true;
    dateBookings as List<Booking>;

    final List<Duration> durations = List.generate(
      15,
      (index) => Duration(hours: 8 + index),
    );

    return durations.any(
      (duration) => isTimeAvailable(
        DateTime(date.year, date.month, date.day).toUtc().add(duration),
      ),
    );
  }

  bool isTimeAvailable(
    DateTime time, {
    Duration duration = const Duration(hours: 1),
  }) {
    final DateTime startTime = time;
    final DateTime endTime = time.add(duration);

    if (_isRunningLate(startTime)) return false;
    if (_isNotInWorkingHours(startTime, endTime)) return false;

    return _hasNoInterceptionsWithOtherBookings(startTime, endTime);
  }

  bool _isRunningLate(DateTime startTime) {
    final DateTime now = DateTime.now();
    return startTime.isBeforeOrAtSameMomentAs(now);
  }

  bool _isNotInWorkingHours(DateTime startTime, DateTime endTime) {
    final bool isBeforeOpen =
        startTime.isBefore(AvailabilityType.openTimeAt(startTime));
    final bool isAfterClose =
        endTime.isAfter(AvailabilityType.closeTimeAt(startTime));

    return isBeforeOpen || isAfterClose;
  }

  bool _hasNoInterceptionsWithOtherBookings(
    DateTime startTime,
    DateTime endTime,
  ) {
    final List<Booking>? dateBookings = getDateBookings(startTime);

    if (dateBookings.isNullOrEmpty) return true;
    dateBookings as List<Booking>;

    return dateBookings.every((booking) {
      return (startTime.isAfterOrAtSameMomentAs(booking.startTime) &&
              startTime.isAfterOrAtSameMomentAs(booking.endTime) &&
              endTime.isAfter(booking.startTime) &&
              endTime.isAfter(booking.endTime)) ||
          (startTime.isBefore(booking.startTime) &&
              startTime.isBefore(booking.endTime) &&
              endTime.isBeforeOrAtSameMomentAs(booking.startTime) &&
              endTime.isBeforeOrAtSameMomentAs(booking.endTime));
    });
  }
}
