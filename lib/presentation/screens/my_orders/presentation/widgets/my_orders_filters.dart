import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_type.dart';
import 'package:gap/gap.dart';
import '../../../../ui/app_dropdown_button.dart';
import 'package:flutter/material.dart';

class MyOrdersFilters extends StatelessWidget {
  const MyOrdersFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: AppDropdownButton(
              items: OrderType.values
                  .map((status) => DropdownButtonItem(
                        title: status.title,
                        value: status,
                      ))
                  .toList(),
              hintText: 'Услуга',
              onChanged: print,
            ),
          ),
          const Gap(10),
          Expanded(
            child: AppDropdownButton(
              items: OrderStatus.values
                  .map((status) => DropdownButtonItem(
                        title: status.title,
                        value: status,
                      ))
                  .toList(),
              hintText: 'Статус заказа',
              onChanged: print,
              menuItemBuilder: (item) =>
                  _orderStatusMenuItemBuilder(context, item),
              selectedItemBuilder: (item) =>
                  _orderStatusSelectedItemBuilder(context, item),
            ),
          ),
        ],
      ),
    );
  }

  Widget _orderStatusMenuItemBuilder(
    BuildContext context,
    DropdownButtonItem<OrderStatus> item,
  ) {
    return Row(
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: item.value.color,
          ),
        ),
        const Gap(10),
        Text(
          item.title,
          style: context.styles.footer1.copyWith(
            color: context.colors.onBackground,
          ),
        ),
      ],
    );
  }

  Widget _orderStatusSelectedItemBuilder(
    BuildContext context,
    DropdownButtonItem<OrderStatus> item,
  ) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: item.value.color,
          ),
        ),
        const Gap(10),
        Text(
          item.title,
          style: context.styles.body2,
        ),
      ],
    );
  }
}
