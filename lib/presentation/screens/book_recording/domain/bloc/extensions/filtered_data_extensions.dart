part of '../bookings_bloc.dart';

extension FilteredDataExtensions on BookingsState {
  List<Booking>? getDateBookings(DateTime date) => bookings
      ?.where((booking) => isSameDay(booking.date, date))
      .where((booking) => booking.isPending || booking.isCompleted)
      .toList();

  List<DateTime> getAvailableTimes({
    required DateTime date,
    required AvailabilityType type,
  }) {
    return List.generate(
      AvailabilityType.maxDuration,
      (index) => DateTime(date.year, date.month, date.day, 8 + index),
    ).where(type.isAvailable).where(isTimeAvailable).toList();
  }

  List<Duration> getAvailableDurations({
    required DateTime date,
    required DateTime time,
  }) {
    return List.generate(
      AvailabilityType.maxDuration,
      (index) => Duration(hours: index + 1),
    ).where((duration) => isTimeAvailable(time, duration: duration)).toList();
  }
}
