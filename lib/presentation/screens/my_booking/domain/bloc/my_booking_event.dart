part of 'my_booking_bloc.dart';

@freezed
class MyBookingEvent with _$MyBookingEvent {
  const factory MyBookingEvent.setLoading() = _SetLoading;

  const factory MyBookingEvent.setLoaded(Booking booking) = _SetLoaded;

  const factory MyBookingEvent.setError(String? message) = _SetError;
}
