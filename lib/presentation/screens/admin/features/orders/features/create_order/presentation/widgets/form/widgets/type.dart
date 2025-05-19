part of '../../../admin_create_order_screen.dart';

class _Type extends StatelessWidget {
  const _Type();

  @override
  Widget build(BuildContext context) {
    final AdminCreateOrderBloc bloc = context.read();

    return AppDropdownButton(
      items: _types,
      hintText: _hintText,
      onChanged: (type) {
        bloc.add(AdminCreateOrderEvent.orderTypeSelected(type));
      },
    );
  }

  static const String _hintText = 'Тип заказа';

  List<DropdownButtonItem<OrderType>> get _types {
    return OrderType.values
        .map((type) => DropdownButtonItem(title: type.title, value: type))
        .toList();
  }
}
