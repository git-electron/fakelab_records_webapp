part of 'book_recording_bloc.dart';

@freezed
class BookRecordingState with _$BookRecordingState {
  const factory BookRecordingState.loading() = _Loading;

  const factory BookRecordingState.loaded(List<Booking> bookings) = _Loaded;

  const factory BookRecordingState.error(String? message) = _Error;

  const BookRecordingState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeWhen(
        loaded: (_) => true,
        orElse: () => false,
      );

  List<Booking>? get bookings => whenOrNull(
        loaded: (bookings) => bookings,
      );

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );
  String? get message => whenOrNull(error: (message) => message);
}
