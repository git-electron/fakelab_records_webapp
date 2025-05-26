import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_filters.freezed.dart';
part 'booking_filters.g.dart';

@freezed
class BookingFilters with _$BookingFilters {

  factory BookingFilters({
    required String userIdStatus,
  }) = _BookingFilters;

  factory BookingFilters.fromJson(Map<String, dynamic> json) => _$BookingFiltersFromJson(json);
}