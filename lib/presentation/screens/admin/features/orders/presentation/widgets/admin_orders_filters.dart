import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_status.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order_type.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/domain/bloc/admin_orders_filters_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';

class AdminOrdersFilters extends StatelessWidget {
  const AdminOrdersFilters({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminOrdersFiltersBloc bloc = context.read();

    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Padding(
      padding: const Pad(horizontal: 20),
      child: Column(
        children: [
          if (isMobile) _customerSearchTextField(context),
          if (isMobile) const Gap(10),
          Row(
            children: [
              if (!isMobile)
                Expanded(
                  flex: 3,
                  child: _customerSearchTextField(context),
                ),
              if (!isMobile) const Gap(10),
              Expanded(
                child: AppDropdownButton(
                  items: OrderType.values
                      .map((status) => DropdownButtonItem(
                            title: status.title,
                            value: status,
                          ))
                      .toList(),
                  hintText: 'Услуга',
                  onChanged: (type) => bloc.add(
                    AdminOrdersFiltersEvent.typeFilterChanged(type),
                  ),
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
                  onChanged: (status) => bloc.add(
                    AdminOrdersFiltersEvent.statusFilterChanged(status),
                  ),
                  menuItemBuilder: (item) =>
                      _orderStatusMenuItemBuilder(context, item),
                  selectedItemBuilder: (item) =>
                      _orderStatusSelectedItemBuilder(context, item),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _customerSearchTextField(BuildContext context) {
    final AdminOrdersFiltersBloc bloc = context.read();

    return AppTextField(
      hintText: 'Поиск по имени / юзернейму / айди заказа',
      prefixIcon: Assets.icons.search.light,
      onChanged: (value) => bloc.add(
        AdminOrdersFiltersEvent.searchQueryChanged(value),
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
