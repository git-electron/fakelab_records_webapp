part of 'book_recording_bloc.dart';

@freezed
class BookRecordingState with _$BookRecordingState {
  const factory BookRecordingState({
    required BookingsState bookingsState,
    required DateTime selectedTime,
    required Duration selectedDuration,
    @Default(false) bool isBookButtonLoading,
    @Default(null) String? errorMessage,
  }) = _BookRecordingState;

  const BookRecordingState._();

  bool get isLoading => bookingsState.isLoading;

  bool get hasError => errorMessage != null || bookingsState.hasError;

  String? get message => errorMessage ?? bookingsState.message;

  bool get isTimeAvailable => bookingsState.isTimeAvailable(
        selectedTime,
        duration: selectedDuration,
      );
}
