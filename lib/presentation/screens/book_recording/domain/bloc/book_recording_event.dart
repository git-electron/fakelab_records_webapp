part of 'book_recording_bloc.dart';

@freezed
class BookRecordingEvent with _$BookRecordingEvent {
  const factory BookRecordingEvent.setLoading() = _SetLoading;

  const factory BookRecordingEvent.setLoaded(List<Booking> bookings) =
      _SetLoaded;

  const factory BookRecordingEvent.setError(String? message) = _SetError;
}
