import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/border_radius_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/checkout/domain/models/checkout_hint.dart';
import 'package:fakelab_records_webapp/features/checkout/domain/models/checkout_item.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

part 'widgets/checkout_item.dart';
part 'widgets/checkout_hint.dart';

class CheckoutFeature extends StatelessWidget {
  const CheckoutFeature({
    required this.items,
    this.hint,
    super.key,
  });

  factory CheckoutFeature.order(
    Order order, {
    CheckoutHint? hint,
  }) {
    final List<CheckoutItem> items = order.services
        .map((service) => CheckoutItem(
              title: service.type.title,
              totalCost: service.totalCost,
              costFrom: service.costFrom,
            ))
        .toList();

    return CheckoutFeature(items: items, hint: hint);
  }

  final CheckoutHint? hint;
  final List<CheckoutItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: BorderRadius.circular(20).smoothShape(),
      ),
      padding: const Pad(all: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Что в заказе', style: context.styles.body1),
          const Gap(10),
          ...items.map(_CheckoutItem.item),
          _CheckoutItem.item(_total),
          if (hint != null) _CheckoutHint(hint!),
        ],
      ),
    );
  }

  CheckoutItem get _total => CheckoutItem.total(
        totalCost: items.map((item) => item.totalCost).reduce((a, b) => a + b),
        costFrom: items.any((item) => item.costFrom),
      );
}
