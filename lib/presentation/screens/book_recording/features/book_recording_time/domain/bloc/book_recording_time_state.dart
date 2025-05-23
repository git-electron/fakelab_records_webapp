part of 'book_recording_time_bloc.dart';

const Duration _kHourDuration = Duration(hours: 1);

@freezed
class BookRecordingTimeState with _$BookRecordingTimeState {
  const factory BookRecordingTimeState({
    required DateTime selectedDate,
    required BookingsState bookingsState,
    @Default(null) DateTime? selectedTime,
    @Default(_kHourDuration) Duration selectedDuration,
  }) = _BookRecordingTimeState;

  const BookRecordingTimeState._();

  Duration get kHourDuration => _kHourDuration;

  bool get isLoading => bookingsState.maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get hasError => bookingsState.maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );

  String? get message => bookingsState.whenOrNull(error: (message) => message);

  List<DateTime> getAvailableTimes(AvailabilityType? type) =>
      bookingsState.getAvailableTimes(selectedDate, type: type);

  bool isSelected(DateTime time) =>
      selectedTime?.isAtSameMomentAs(time) ?? false;

  bool get canProceed => selectedTime != null;

  Duration get maxDuration {
    if (selectedTime == null) return _kHourDuration;
    return bookingsState.getMaxDuration(selectedTime!);
  }

  Duration get maxOrCurrent {
    if (selectedDuration > maxDuration) return maxDuration;
    return selectedDuration;
  }

  bool get canBeGreater {
    if (selectedTime == null) return false;
    return bookingsState.canBeGreater(
      selectedTime!,
      duration: selectedDuration,
    );
  }

  bool get canBeLower => selectedDuration > kHourDuration;

  int get selectedHours => selectedDuration.inHours.remainder(24).abs();

  double get totalCost => kBookingCostPerHour * selectedHours;

  String get selectedDurationString =>
      '${selectedDuration.toHHplural(withMinutes: false)} записи на студии';

  List<CheckoutItem> get checkoutItems => [
        CheckoutItem(title: selectedDurationString, totalCost: totalCost),
        CheckoutItem(title: 'Предоплата 25%', totalCost: totalCost * .25),
      ];
}
