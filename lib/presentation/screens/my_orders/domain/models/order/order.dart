import '../../../../../../core/domain/models/rating/rating.dart';
import '../../../../../../core/domain/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'service/order_service.dart';
import 'order_status.dart';
import 'order_type.dart';
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
    required DateTime dateCreated,
    required double totalCost,
    required bool costFrom,
    required List<OrderService> services,
    Rating? rating,
  }) = _Order;

  Order._();

  String get idShort =>  '#${id.substring(id.length - 5)}';

  String get typeTitleForCard => (type.titleForCard ?? type.title).toUpperCase();

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
