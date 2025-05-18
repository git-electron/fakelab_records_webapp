part of '../../../my_orders_screen.dart';

class _TypeFilter extends StatelessWidget {
  const _TypeFilter();

  @override
  Widget build(BuildContext context) {
    final MyOrdersFiltersBloc bloc = context.read();

    return AppDropdownButton<OrderType>(
      items: _items,
      hintText: 'Услуга',
      onChanged: (type) => bloc.add(
        MyOrdersFiltersEvent.typeFilterChanged(type),
      ),
    );
  }

  List<DropdownButtonItem<OrderType>> get _items => OrderType.values
      .map((status) => DropdownButtonItem(
            title: status.title,
            value: status,
          ))
      .toList();
}
