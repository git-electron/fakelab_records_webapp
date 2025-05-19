part of '../../../admin_orders_screen.dart';

class _TypeFilter extends StatelessWidget {
  const _TypeFilter();

  @override
  Widget build(BuildContext context) {
    final AdminOrdersFiltersBloc bloc = context.read();

    return Expanded(
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
        menuItemBuilder: _orderStatusMenuItemBuilder,
        selectedItemBuilder: _orderStatusSelectedItemBuilder,
      ),
    );
  }

  Widget _orderStatusMenuItemBuilder(
    DropdownButtonItem<OrderStatus> item,
  ) {
    return Builder(builder: (context) {
      return Row(
        spacing: 10,
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: item.value.color,
            ),
          ),
          Text(
            item.title,
            style: context.styles.footer1.copyWith(
              color: context.colors.onBackground,
            ),
          ),
        ],
      );
    });
  }

  Widget _orderStatusSelectedItemBuilder(
    DropdownButtonItem<OrderStatus> item,
  ) {
    return Builder(builder: (context) {
      return Row(
        spacing: 10,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: item.value.color,
            ),
          ),
          Text(
            item.title,
            style: context.styles.body2,
          ),
        ],
      );
    });
  }
}
