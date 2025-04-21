import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/service/order_service.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/domain/bloc/my_order_bloc.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class MyOrderScreenServices extends StatelessWidget {
  const MyOrderScreenServices({super.key});

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
              Text('Что в заказе', style: context.styles.body1),
              const Gap(10),
              ...order.services.map(_buildServiceInfo),
              OrderServiceInfo.total(order),
              if (order.costFrom) const TotalCostWarning()
            ],
          ),
        );
      },
    );
  }

  Widget _buildServiceInfo(OrderService service) => OrderServiceInfo(service);
}

class OrderServiceInfo extends StatelessWidget {
  const OrderServiceInfo(this.service, {super.key})
      : isTotalCost = false,
        order = null;

  const OrderServiceInfo.total(this.order, {super.key})
      : isTotalCost = true,
        service = null;

  final bool isTotalCost;
  final Order? order;
  final OrderService? service;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Pad(bottom: 5, top: isTotalCost ? 5 : 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            isTotalCost ? 'Общая стоимость' : service!.type.title,
            style: context.styles.footer1.copyWith(
                color: isTotalCost ? context.colors.onBackground : null),
          ),
          Text(
            isTotalCost
                ? _cost(order!.totalCost, costFrom: order!.costFrom)
                : _cost(service!.totalCost, costFrom: service!.costFrom),
            style: context.styles.footer1.copyWith(
                color: isTotalCost ? context.colors.onBackground : null),
          ),
        ],
      ),
    );
  }

  String _cost(double cost, {required bool costFrom}) {
    final String costFormatted = cost.formatCurrency();
    return '${costFrom ? 'от ' : ''}$costFormatted';
  }
}

class TotalCostWarning extends StatelessWidget {
  const TotalCostWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(top: 10),
      child: Container(
        padding: const Pad(all: 10),
        decoration: ShapeDecoration(
          color: context.colors.background,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 10,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.icons.question.gray.svg(),
            const Gap(10),
            Expanded(
              child: Text(
                'Точная стоимость заказа станет известна после подтверждения менеджером',
                style: context.styles.footer2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
