part of 'book_recording_bloc.dart';

@freezed
class BookRecordingEvent with _$BookRecordingEvent {
  const factory BookRecordingEvent.bookButtonPressed() = _BookButtonPressed;

  const factory BookRecordingEvent.userStateChanged(
    UserState userState,
  ) = _UserStateChanged;

  const factory BookRecordingEvent.bookingsStateChanged(
    BookingsState bookingsState,
  ) = _BookingsStateChanged;
}
