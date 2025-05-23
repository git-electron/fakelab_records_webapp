part of 'bookings_bloc.dart';

@freezed
class BookingsEvent with _$BookingsEvent {
  const factory BookingsEvent.setLoading() = _SetLoading;

  const factory BookingsEvent.setLoaded(List<Booking> bookings) = _SetLoaded;

  const factory BookingsEvent.setError(String? message) = _SetError;
}
