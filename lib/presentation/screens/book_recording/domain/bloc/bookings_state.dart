part of 'bookings_bloc.dart';

@freezed
class BookingsState with _$BookingsState {
  const factory BookingsState.loading() = _Loading;

  const factory BookingsState.loaded(List<Booking> bookings) = _Loaded;

  const factory BookingsState.error(String? message) = _Error;

  const BookingsState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeWhen(
        loaded: (_) => true,
        orElse: () => false,
      );

  List<Booking>? get bookings => whenOrNull(
        loaded: (bookings) => bookings,
      );

  List<Booking>? getDateBookings(DateTime date) => bookings
      ?.where((booking) =>
          booking.date.year == date.year &&
          booking.date.month == date.month &&
          booking.date.day == date.day)
      .toList();

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );
  String? get message => whenOrNull(error: (message) => message);

  bool isDayAvailable(DateTime date) {
    final List<Booking>? dateBookings = getDateBookings(date);

    if (dateBookings.isNullOrEmpty) return true;
    dateBookings as List<Booking>;

    final List<Duration> durations = List.generate(
      15,
      (index) => Duration(hours: 8 + index),
    );

    final bool isAvailable = durations.any(
      (duration) => isTimeAvailable(
        DateTime(date.year, date.month, date.day).toUtc().add(duration),
      ),
    );

    return isAvailable;
  }

  bool isTimeAvailable(
    DateTime date, {
    Duration duration = const Duration(hours: 1),
  }) {
    final DateTime now = DateTime.now();

    final DateTime startDate = date;
    final DateTime endDate = date.add(duration);

    if (startDate.isBeforeOrAtSameMomentAs(now)) return false;

    final List<Booking>? dateBookings = getDateBookings(date);

    if (dateBookings.isNullOrEmpty) return true;
    dateBookings as List<Booking>;

    final bool isAvailable = dateBookings.every((booking) {
      return (startDate.isAfterOrAtSameMomentAs(booking.startDate) &&
              startDate.isAfterOrAtSameMomentAs(booking.endDate) &&
              endDate.isAfter(booking.startDate) &&
              endDate.isAfter(booking.endDate)) ||
          (startDate.isBefore(booking.startDate) &&
              startDate.isBefore(booking.endDate) &&
              endDate.isBeforeOrAtSameMomentAs(booking.startDate) &&
              endDate.isBeforeOrAtSameMomentAs(booking.endDate));
    });

    return isAvailable;
  }
}
