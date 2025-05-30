// ignore_for_file: library_private_types_in_public_api

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/features/my_bookings/domain/models/booking/booking_status.dart';
import 'package:fakelab_records_webapp/features/my_bookings/domain/models/booking/status_history_item/booking_status_history_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/extensions/border_radius_extensions.dart';
import '../../core/theme/theme_extensions.dart';
import '../my_bookings/domain/models/booking/booking.dart';
import '../my_orders/domain/models/order/order.dart';
import '../my_orders/domain/models/order/status_history_item/order_status_history_item.dart';

part 'widgets/order_status_history_item.dart';
part 'widgets/booking_status_history_item.dart';
part 'widgets/status_history_item.dart';

enum _StatusHistoryType { order, booking }

class StatusHistoryFeature extends StatelessWidget {
  const StatusHistoryFeature.order({
    required this.order,
    super.key,
  })  : type = _StatusHistoryType.order,
        booking = null;

  const StatusHistoryFeature.booking({
    required this.booking,
    super.key,
  })  : type = _StatusHistoryType.booking,
        order = null;

  final Order? order;
  final Booking? booking;
  final _StatusHistoryType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const Pad(all: 20),
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('История', style: context.styles.body1),
          const Gap(20),
          ..._statusHistory,
        ],
      ),
    );
  }

  List<Widget> get _statusHistory {
    final List<Widget> statusHistory = switch (type) {
      _StatusHistoryType.order => _orderStatusHistory,
      _StatusHistoryType.booking => _bookingStatusHistory,
    };

    return statusHistory.alternateWith(
      Container(
        width: 50,
        alignment: Alignment.center,
        child: Builder(builder: (context) {
          return Container(
            width: 2,
            height: 10,
            color: context.colors.footer.copyWithOpacity(.25),
          );
        }),
      ),
    );
  }

  List<Widget> get _orderStatusHistory => order!.statusHistory.reversed
      .map<Widget>((item) => _OrderStatusHistoryItem(
            item,
            isCurrent: order!.isCurrentStatusHistoryItem(item),
          ))
      .toList();

  List<Widget> get _bookingStatusHistory => booking!.statusHistory.reversed
      .map<Widget>((item) => _BookingStatusHistoryItem(
            item,
            isCurrent: booking!.isCurrentStatusHistoryItem(item),
          ))
      .toList();
}
