part of 'book_recording_date_bloc.dart';

@freezed
class BookRecordingDateState with _$BookRecordingDateState {
  const factory BookRecordingDateState({
    required UserState userState,
    required BookingsState bookingsState,
    @Default(null) DateTime? selectedDate,
  }) = _BookRecordingDateState;

  const BookRecordingDateState._();

  bool get isLoading => bookingsState.isLoading;

  bool get isLoaded => bookingsState.isLoaded;
  List<Booking>? get bookings => bookingsState.bookings;

  bool get hasError => bookingsState.hasError;
  String? get message => bookingsState.message;

  bool get canBookRecording {
    if (!userState.isAuthorized) return false;
    return bookingsState.canBookRecording(userState.user!);
  }

  bool isDateAvailable(DateTime date) => bookingsState.isDateAvailable(date);

  bool get isSelectedDateAvailable {
    if (selectedDate == null) return false;
    return bookingsState.isDateAvailable(selectedDate!);
  }
}
