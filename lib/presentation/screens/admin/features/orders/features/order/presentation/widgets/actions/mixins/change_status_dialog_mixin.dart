import '../../../../../../../../../../../core/theme/theme_extensions.dart';
import '../../../../../../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../../../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../../../../../../../../ui/app_dropdown_button.dart';
import '../../../../../../../../../../ui/app_dropdown_dialog/app_dropdown_dialog.dart';
import 'package:flutter/material.dart';

mixin ChangeStatusDialogMixin {
  Order get order;

  static const String _title = 'Изменить статус';
  static const String _hintText = 'Статус заказа';
  static const String _description = 'Укажи новый статус заказа';

  Future<OrderStatus?> showChangeStatusDialog(BuildContext context) async {
    final OrderStatus? status = await AppDropdownDialog.show(
      context,
      items: _items,
      title: _title,
      hintText: _hintText,
      description: _description,
      initialValue: order.status,
      menuItemBuilder: _menuItemBuilder,
      selectedItemBuilder: _selectedItemBuilder,
    );

    return status;
  }

  List<DropdownButtonItem<OrderStatus>> get _items {
    return OrderStatus.values
        .map((status) => DropdownButtonItem(
              title: status.title,
              value: status,
            ))
        .toList();
  }

  Widget _menuItemBuilder(DropdownButtonItem<OrderStatus> item) =>
      _StatusBuilder(item.value);

  Widget _selectedItemBuilder(DropdownButtonItem<OrderStatus> item) =>
      _StatusBuilder(item.value, isSelected: true);
}

class _StatusBuilder extends StatelessWidget {
  const _StatusBuilder(
    this.status, {
    this.isSelected = false,
  });

  final bool isSelected;
  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Row(
        spacing: 10,
        children: [
          Container(
            height: isSelected ? 20 : 15,
            width: isSelected ? 20 : 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: status.color,
            ),
          ),
          Text(
            status.title,
            style: _style(context),
          ),
        ],
      );
    });
  }

  TextStyle _style(BuildContext context) => isSelected
      ? context.styles.body2
      : context.styles.footer1.copyWith(
          color: context.colors.onBackground,
        );
}
