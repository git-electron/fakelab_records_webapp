part of 'book_recording_date_bloc.dart';

@freezed
class BookRecordingDateState with _$BookRecordingDateState {
  const factory BookRecordingDateState({
    @Default(null) DateTime? selectedDay,
  }) = _BookRecordingDateState;
}
