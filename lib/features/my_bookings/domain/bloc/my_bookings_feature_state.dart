part of 'my_bookings_feature_bloc.dart';

@freezed
class MyBookingsFeatureState with _$MyBookingsFeatureState {
  const factory MyBookingsFeatureState.loading() = _Loading;

  const factory MyBookingsFeatureState.loadedList(
    List<Booking> bookings,
  ) = _LoadedList;

  const factory MyBookingsFeatureState.loadedSingle(
    Booking? booking,
  ) = _LoadedSingle;

  const factory MyBookingsFeatureState.error(String? message) = _Error;

  const MyBookingsFeatureState._();

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isLoaded => maybeWhen(
        loadedList: (_) => true,
        loadedSingle: (_) => true,
        orElse: () => false,
      );

  List<Booking>? get bookings => whenOrNull(loadedList: (bookings) => bookings);
  Booking? get booking => whenOrNull(loadedSingle: (booking) => booking);

  bool get hasBookings => maybeWhen(
        loadedList: (bookings) => bookings.isNotEmpty,
        loadedSingle: (booking) => booking != null,
        orElse: () => false,
      );

  String? get message => whenOrNull(error: (message) => message);

  bool get hasError => maybeWhen(
        error: (_) => true,
        orElse: () => false,
      );
}
