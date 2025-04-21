import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/status_history_item/order_status_history_item.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/domain/bloc/my_order_bloc.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class MyOrderScreenStatusHistory extends StatelessWidget {
  const MyOrderScreenStatusHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrderBloc, MyOrderState>(
      builder: (context, state) {
        final Order order = state.order!;

        return Container(
          width: double.infinity,
          decoration: ShapeDecoration(
            color: context.colors.card,
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 20,
                cornerSmoothing: 0.6,
              ),
            ),
          ),
          padding: const Pad(all: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('История', style: context.styles.body1),
              const Gap(20),
              ...order.statusHistory.reversed
                  .map(_buildStatusHistoryItemInfo)
                  .toList()
                  .alternateWith(
                    Container(
                      width: 50,
                      alignment: Alignment.center,
                      child: Container(
                        height: 10,
                        width: 2,
                        color: context.colors.footer.copyWithOpacity(.25),
                      ),
                    ),
                  ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildStatusHistoryItemInfo(OrderStatusHistoryItem item) =>
      OrderStatusHistoryItemInfo(item);
}

class OrderStatusHistoryItemInfo extends StatelessWidget {
  const OrderStatusHistoryItemInfo(this.item, {super.key});

  final OrderStatusHistoryItem item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrderBloc, MyOrderState>(
      builder: (context, state) {
        final Order order = state.order!;

        return Opacity(
          opacity: order.isCurrentStatus(item.status) ? 1 : .25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: ShapeDecoration(
                  color: item.status.color,
                  shape: SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius(
                      cornerRadius: 15,
                      cornerSmoothing: 0.6,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: icon.svg(height: 25, width: 25),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.status.title,
                    style: context.styles.body2,
                  ),
                  const Gap(5),
                  Text(
                    item.dateChanged.toDDmmYYYYwithMonths(
                      withWords: true,
                      isShort: false,
                    ),
                    style: context.styles.footer1,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  SvgGenImage get icon => switch (item.status) {
        OrderStatus.REQUEST => Assets.icons.box.background,
        OrderStatus.PENDING => Assets.icons.clock.background,
        OrderStatus.IN_PROGRESS => Assets.icons.clock.background,
        OrderStatus.AWAITING_CONFIRMATION => Assets.icons.check.background,
        OrderStatus.COMPLETED => Assets.icons.doubleCheck.background,
        OrderStatus.CANCELLED => Assets.icons.cross.background,
      };
}
