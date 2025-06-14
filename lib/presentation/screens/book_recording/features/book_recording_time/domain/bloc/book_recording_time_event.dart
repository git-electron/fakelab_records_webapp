part of 'book_recording_time_bloc.dart';

@freezed
class BookRecordingTimeEvent with _$BookRecordingTimeEvent {
  const factory BookRecordingTimeEvent.timeSelected(
    DateTime selectedTime,
  ) = _TimeSelected;

  const factory BookRecordingTimeEvent.durationSelected(
    Duration selectedDuration,
  ) = _DurationSelected;

  const factory BookRecordingTimeEvent.userStateChanged(
    UserState userState,
  ) = _UserStateChanged;

  const factory BookRecordingTimeEvent.bookingsStateChanged(
    BookingsState bookingsState,
  ) = _BookingsStateChanged;

  const factory BookRecordingTimeEvent.proceedButtonPressed() =
      _ProceedButtonPressed;
}
