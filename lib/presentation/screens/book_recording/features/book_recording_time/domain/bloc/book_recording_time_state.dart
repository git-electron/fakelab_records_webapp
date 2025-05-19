part of 'book_recording_time_bloc.dart';

@freezed
class BookRecordingTimeState with _$BookRecordingTimeState {
  const factory BookRecordingTimeState({
    @Default(null) DateTime? selectedTime,
    @Default(Duration(hours: 1)) Duration selectedDuration,
  }) = _BookRecordingTimeState;

  const BookRecordingTimeState._();

  bool isSelected(DateTime time) =>
      selectedTime?.isAtSameMomentAs(time) ?? false;

  bool get canProceed => selectedTime != null;
}
