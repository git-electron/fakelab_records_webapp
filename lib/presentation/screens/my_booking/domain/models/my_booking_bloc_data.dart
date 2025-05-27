import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_booking_bloc_data.freezed.dart';

@freezed
class MyBookingBlocData with _$MyBookingBlocData {
  const factory MyBookingBlocData({
    required String bookingId,
  }) = _MyBookingBlocData;
}
