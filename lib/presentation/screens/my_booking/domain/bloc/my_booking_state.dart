part of 'my_booking_bloc.dart';

@freezed
class MyBookingState with _$MyBookingState {
  const factory MyBookingState.loading() = _Loading;

  const factory MyBookingState.loaded(Booking booking) = _Loaded;

  const factory MyBookingState.error(String? message) = _Error;

  const MyBookingState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeWhen(
        loaded: (_) => true,
        orElse: () => false,
      );

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );

  Booking? get booking => whenOrNull(loaded: (booking) => booking);

  String? get message => whenOrNull(error: (message) => message);
}
