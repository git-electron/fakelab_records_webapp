part of '../../../admin_orders_screen.dart';

class _StatusFilter extends StatelessWidget {
  const _StatusFilter();

  @override
  Widget build(BuildContext context) {
    final AdminOrdersFiltersBloc bloc = context.read();

    return Expanded(
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
    );
  }
}
