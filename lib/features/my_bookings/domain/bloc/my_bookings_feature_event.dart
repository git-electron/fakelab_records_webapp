part of 'my_bookings_feature_bloc.dart';

@freezed
class MyBookingsFeatureEvent with _$MyBookingsFeatureEvent {
  const factory MyBookingsFeatureEvent.setLoading() = _SetLoading;

  const factory MyBookingsFeatureEvent.setLoadedList(
    List<Booking> bookings,
  ) = _SetLoadedList;

  const factory MyBookingsFeatureEvent.setLoadedSingle(
    Booking? booking,
  ) = _SetLoadedSingle;

  const factory MyBookingsFeatureEvent.setError(String? message) = _SetError;
}
