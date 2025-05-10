part of 'book_recording_bloc.dart';

@freezed
class BookRecordingState with _$BookRecordingState {
  const factory BookRecordingState.loading() = _Loading;

  const factory BookRecordingState.loaded(List<Booking> bookings) = _Loaded;

  const factory BookRecordingState.error(String? message) = _Error;

  const BookRecordingState._();

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

    return !durations.any(
      (duration) => isTimeAvailable(
        DateTime(date.year, date.month, date.day).add(duration),
      ),
    );
  }

  bool isTimeAvailable(DateTime date, {Duration duration = Duration.zero}) {
    final List<Booking>? dateBookings = getDateBookings(date);

    if (dateBookings.isNullOrEmpty) return true;
    dateBookings as List<Booking>;

    final DateTime startDate = date;
    final DateTime endDate = date.add(duration);

    return dateBookings.any((booking) {
      return (startDate.isAfterOrAtSameMomentAs(booking.startDate) &&
              startDate.isAfterOrAtSameMomentAs(booking.endDate) &&
              endDate.isAfter(booking.startDate) &&
              endDate.isAfter(booking.endDate)) ||
          (startDate.isBefore(booking.startDate) &&
              startDate.isBefore(booking.endDate) &&
              endDate.isBeforeOrAtSameMomentAs(booking.startDate) &&
              endDate.isBeforeOrAtSameMomentAs(booking.endDate));
    });
  }
}
