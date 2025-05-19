part of 'bookings_bloc.dart';

@freezed
class BookingsState with _$BookingsState {
  const factory BookingsState.loading() = _Loading;

  const factory BookingsState.loaded(List<Booking> bookings) = _Loaded;

  const factory BookingsState.error(String? message) = _Error;

  const BookingsState._();

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
