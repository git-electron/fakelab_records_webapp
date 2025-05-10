part of 'book_recording_date_bloc.dart';

@freezed
class BookRecordingDateEvent with _$BookRecordingDateEvent {
  const factory BookRecordingDateEvent.daySelected(DateTime selectedDay) =
      _DaySelected;
}
