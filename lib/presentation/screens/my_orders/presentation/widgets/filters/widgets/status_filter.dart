part of '../../../my_orders_screen.dart';

class _StatusFilter extends StatelessWidget {
  const _StatusFilter();

  @override
  Widget build(BuildContext context) {
    final MyOrdersFiltersBloc bloc = context.read();

    return AppDropdownButton<OrderStatus>(
      items: _items,
      hintText: 'Статус заказа',
      menuItemBuilder: _menuItemBuilder,
      selectedItemBuilder: _selectedItemBuilder,
      onChanged: (status) => bloc.add(
        MyOrdersFiltersEvent.statusFilterChanged(status),
      ),
    );
  }

  List<DropdownButtonItem<OrderStatus>> get _items => OrderStatus.values
      .map((status) => DropdownButtonItem<OrderStatus>(
            title: status.title,
            value: status,
          ))
      .toList();

  Widget _menuItemBuilder(
    DropdownButtonItem<OrderStatus> item,
  ) {
    return Builder(builder: (context) {
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
    });
  }

  Widget _selectedItemBuilder(
    DropdownButtonItem<OrderStatus> item,
  ) {
    return Builder(builder: (context) {
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
    });
  }
}
