part of 'book_recording_bloc.dart';

@freezed
class BookRecordingState with _$BookRecordingState {
  const factory BookRecordingState({
    required UserState userState,
    required BookingsState bookingsState,
    required DateTime selectedTime,
    required Duration selectedDuration,
    @Default(false) bool isBookButtonLoading,
    @Default(null) String? errorMessage,
  }) = _BookRecordingState;

  const BookRecordingState._();

  bool get hasError => errorMessage != null || bookingsState.hasError;

  String? get message => errorMessage ?? bookingsState.message;

  bool get canBookRecording {
    if (!userState.isAuthorized) return false;
    return bookingsState.canBookRecording(userState.user!);
  }

  bool get isTimeAvailable => bookingsState.isTimeAvailable(
        selectedTime,
        duration: selectedDuration,
      );

  int get selectedHours => selectedDuration.inHours.remainder(24).abs();

  double get totalCost => kBookingCostPerHour * selectedHours;

  String get selectedDurationString =>
      '${selectedDuration.toHHplural(withMinutes: false)} записи на студии';

  CheckoutItem get checkoutItem =>
      CheckoutItem(title: selectedDurationString, totalCost: totalCost);

  Booking _booking(IdGenerator idGenerator, User customer) {
    final String id = idGenerator.generate();
    final DateTime now = DateTime.now();

    final Booking booking = Booking(
      id: id,
      customer: customer,
      status: BookingStatus.REQUEST,
      statusHistory: [
        BookingStatusHistoryItem(
          status: BookingStatus.REQUEST,
          dateChanged: now,
        ),
      ],
      dateCreated: now,
      dateChanged: now,
      date: selectedTime,
      totalCost: totalCost,
      duration: selectedDuration,
      filters: BookingFilters(
        userIdStatus: '${customer.id}-${BookingStatus.REQUEST.name}',
      ),
    );

    return booking;
  }
}
