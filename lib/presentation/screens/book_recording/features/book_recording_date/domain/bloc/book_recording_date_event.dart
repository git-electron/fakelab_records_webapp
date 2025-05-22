part of 'book_recording_date_bloc.dart';

@freezed
class BookRecordingDateEvent with _$BookRecordingDateEvent {
  const factory BookRecordingDateEvent.dateSelected(
    DateTime selectedDate,
  ) = _DateSelected;

  const factory BookRecordingDateEvent.bookingsStateChanged(
    BookingsState bookingsState,
  ) = _BookingsStateChanged;
}
