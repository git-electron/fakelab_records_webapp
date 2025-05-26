import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/converters/date_time_converter.dart';
import '../booking_status.dart';

part 'booking_status_history_item.freezed.dart';
part 'booking_status_history_item.g.dart';

@freezed
class BookingStatusHistoryItem with _$BookingStatusHistoryItem {
  factory BookingStatusHistoryItem({
    required BookingStatus status,
    @DateTimeConverter() required DateTime dateChanged,
    String? message,
  }) = _BookingStatusHistoryItem;

  factory BookingStatusHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$BookingStatusHistoryItemFromJson(json);
}
