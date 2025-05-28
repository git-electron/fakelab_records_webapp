import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/converters/date_time_converter.dart';
import '../../../../../core/domain/models/rating/rating.dart';
import '../../../../../core/domain/models/user/user.dart';
import '../../../../../presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'booking_status.dart';
import 'filters/booking_filters.dart';
import 'status_history_item/booking_status_history_item.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

const double kBookingCostPerHour = 1000;

@freezed
class Booking with _$Booking {
  factory Booking({
    required String id,
    required User customer,
    required BookingStatus status,
    required List<BookingStatusHistoryItem> statusHistory,
    @DateTimeConverter() required DateTime dateCreated,
    @DateTimeConverter() required DateTime dateChanged,
    @DateTimeConverter() required DateTime date,
    required double totalCost,
    required Duration duration,
    required BookingFilters filters,
    StaffMember? assignee,
    Rating? rating,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

  factory Booking.maybeFromJson(dynamic json) => _$BookingFromJson(json);

  Booking._();

  String get title => 'Бронирование';
  String get titleForCard => title.toUpperCase();
  
  String get idShort => '#${id.substring(id.length - 5)}';

  DateTime get startTime => date;
  DateTime get endTime => date.add(duration);

  bool get isRequest => status == BookingStatus.REQUEST;

  bool get isPending => status == BookingStatus.PENDING;

  bool get isCompleted => status == BookingStatus.COMPLETED;

  bool get isCancelled => status == BookingStatus.CANCELLED;

  bool isCurrentStatusHistoryItem(BookingStatusHistoryItem item) =>
      statusHistory.last == item;
}
