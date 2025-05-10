import 'package:fakelab_records_webapp/core/converters/date_time_converter.dart';
import 'package:fakelab_records_webapp/core/domain/models/rating/rating.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'booking_status.dart';
import 'status_history_item/booking_status_history_item.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  factory Booking({
    required String id,
    required User customer,
    required BookingStatus status,
    required List<BookingStatusHistoryItem> statusHistory,
    @DateTimeConverter() required DateTime dateCreated,
    @DateTimeConverter() required DateTime dateChanged,
    required double totalCost,
    required DateTime startTime,
    required DateTime endTime,
    StaffMember? assignee,
    Rating? rating,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}
