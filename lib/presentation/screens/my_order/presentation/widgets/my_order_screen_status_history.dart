import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
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
              // ...order.statusHistory.reversed.toList().asMap().map(() => OrderStatusHistoryItemInfo(item, isFirst: isFirst, isCurrent: isCurrent)),
              ...List.generate(order.statusHistory.length, (index) {
                return OrderStatusHistoryItemInfo(
                  order.statusHistory[index],
                  isFirst: index == order.statusHistory.length - 1,
                  isCurrent: index == 0,
                );
              }),
            ],
          ),
        );
      },
    );
  }
}

class OrderStatusHistoryItemInfo extends StatelessWidget {
  const OrderStatusHistoryItemInfo(
    this.item, {
    required this.isFirst,
    required this.isCurrent,
    super.key,
  });

  final bool isFirst;
  final bool isCurrent;
  final OrderStatusHistoryItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!isCurrent) _path(context),
            Container(
              height: 40,
              width: 40,
              decoration: ShapeDecoration(
                color: isCurrent
                    ? item.status.color
                    : context.colors.footer.copyWithOpacity(.25),
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 10,
                    cornerSmoothing: 0.6,
                  ),
                ),
              ),
            ),
            if (!isFirst) _path(context)
          ],
        ),
        Text(item.status.title),
      ],
    );
  }

  Widget _path(BuildContext context) => Container(
        height: 10,
        width: 2,
        color: context.colors.footer.copyWithOpacity(.1),
      );
}
