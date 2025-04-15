import 'package:freezed_annotation/freezed_annotation.dart';

import '../order_status.dart';

part 'order_status_history_item.freezed.dart';
part 'order_status_history_item.g.dart';

@freezed
class OrderStatusHistoryItem with _$OrderStatusHistoryItem {
  factory OrderStatusHistoryItem({
    required OrderStatus status,
    required DateTime dateChanged,
  }) = _OrderStatusHistoryItem;

  factory OrderStatusHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusHistoryItemFromJson(json);
}
