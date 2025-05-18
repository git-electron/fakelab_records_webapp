import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/converters/date_time_converter.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/domain/models/rating/rating.dart';
import '../../../../../core/domain/models/user/user.dart';
import 'filters/order_filters.dart';
import 'order_status.dart';
import 'order_type.dart';
import 'service/order_service.dart';
import 'status_history_item/order_status_history_item.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    required String id,
    required User customer,
    required OrderType type,
    required OrderStatus status,
    required List<OrderStatusHistoryItem> statusHistory,
    @DateTimeConverter() required DateTime dateCreated,
    @DateTimeConverter() required DateTime dateChanged,
    required double totalCost,
    required bool costFrom,
    required OrderFilters filters,
    required List<OrderService> services,
    Rating? rating,
    StaffMember? assignee,
  }) = _Order;

  factory Order.fromJson(Json json) => _$OrderFromJson(json);

  factory Order.maybeFromJson(dynamic json) => _$OrderFromJson(json);

  Order._();

  String get idShort => '#${id.substring(id.length - 5)}';

  String get typeTitleForCard =>
      (type.titleForCard ?? type.title).toUpperCase();

  bool isCurrentStatusHistoryItem(OrderStatusHistoryItem item) =>
      statusHistory.last == item;

  bool get isRequest => status == OrderStatus.REQUEST;

  bool get isCompleted => status == OrderStatus.COMPLETED;

  bool get isCancelled => status == OrderStatus.CANCELLED;
}
