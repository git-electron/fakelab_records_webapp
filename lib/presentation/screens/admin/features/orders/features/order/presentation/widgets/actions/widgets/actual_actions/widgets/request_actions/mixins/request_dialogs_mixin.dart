import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/formatters/currency_input_formatter.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_dialog/app_dropdown_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field_dialog/app_text_field_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/avatar/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin RequestDialogsMixin {
  Order get order;

  Future<double?> showCostDialog(BuildContext context) async {
    final double? totalCost = await switch (order.costFrom) {
      true => _showCostEditingDialog(context),
      false => _showCostConfirmationDialog(context),
    };

    return totalCost;
  }

  static const String _costEditingTitle = 'Принять заказ';
  static const String _costEditingHintText = 'Стоимость';
  static const String _costEditingText =
      'Укажи итоговую стоимость, на которую вы договорились с заказчиком';
  List<String> get _costEditingAutofillHints => [1, 1.5, 2]
      .map((x) => (order.type.totalCost * x).formatCurrency())
      .toList();

  Future<double?> _showCostEditingDialog(BuildContext context) async {
    final String? totalCost = await AppTextFieldDialog.show(
      context,
      title: _costEditingTitle,
      hintText: _costEditingHintText,
      description: _costEditingText,
      keyboardType: TextInputType.number,
      autofillHints: _costEditingAutofillHints,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CurrencyTextInputFormatter(),
      ],
    );

    return double.tryParse(totalCost?.extractNumerals() ?? '');
  }

  static const String _costConfirmationTitle = 'Подтверждение';
  String _costConfirmationText(totalCost) =>
      'Подтвердить заказ? Стоимость фиксированная — $totalCost';

  Future<double?> _showCostConfirmationDialog(BuildContext context) async {
    final bool? isConfirmed = await AppConfirmationDialog.show(
      context,
      title: _costConfirmationTitle,
      description: _costConfirmationText(order.totalCost.formatCurrency()),
    );

    return (isConfirmed ?? false) ? order.totalCost : null;
  }

  static const String _assigneeTitle = 'Указать исполнителя';
  static const String _assigneeHintText = 'Исполнитель заказа';
  static const String _assigneeText = 'Укажи исполнителя заказа';
  static const String _assigneeSearchHintText = 'Поиск по имени / псевдониму';

  Future<StaffMember?> showAssigneeDialog(
    BuildContext context, {
    required AdminStaffState state,
  }) async {
    final List<DropdownButtonItem<StaffMember>> items = _getItems(state);
    final StaffMember? assignee = await AppDropdownDialog.show<StaffMember>(
      context,
      items: items,
      title: _assigneeTitle,
      hintText: _assigneeHintText,
      description: _assigneeSearchHintText,
      isSearchEnabled: true,
      initialValue: order.assignee,
      searchHintText: _assigneeText,
      searchMatchFn: _searchMatchFn,
      menuItemBuilder: _orderAssigneeMenuItemBuilder,
      selectedItemBuilder: _orderAssigneeSelectedItemBuilder,
    );

    return assignee;
  }

  List<DropdownButtonItem<StaffMember>> _getItems(AdminStaffState state) {
    return state.staffMembers!
        .where((staffMember) => staffMember.canAssign(order))
        .map((staffMember) => DropdownButtonItem(
              title: staffMember.fullName,
              value: staffMember,
            ))
        .toList();
  }

  bool _searchMatchFn(DropdownMenuItem<StaffMember> item, String query) {
    bool isProperFullName = true;
    bool isProperUsername = true;

    if (item.value != null) {
      final String fullName = item.value!.fullName.toLowerCase();
      isProperFullName = fullName.contains(query.toLowerCase());

      final String? username = item.value!.username?.toLowerCase();
      isProperUsername = username?.contains(query.toLowerCase()) ?? false;
    }

    return isProperFullName || isProperUsername;
  }

  Widget _orderAssigneeMenuItemBuilder(item) =>
      _orderAssigneeBuilder(item, isSelected: false);

  Widget _orderAssigneeSelectedItemBuilder(item) =>
      _orderAssigneeBuilder(item, isSelected: true);

  Widget _orderAssigneeBuilder(
    DropdownButtonItem<StaffMember> item, {
    required bool isSelected,
  }) {
    return Builder(builder: (context) {
      return Row(
        children: [
          if (item.value.photoUrl.isNotNullAndEmpty)
            Padding(
              padding: const Pad(right: 10),
              child: Avatar(
                photoUrl: item.value.photoUrl!,
                size: 30,
              ),
            ),
          Text(
            item.title,
            style: isSelected
                ? context.styles.body2
                : context.styles.footer1.copyWith(
                    color: context.colors.onBackground,
                  ),
          ),
        ],
      );
    });
  }

  static const String _cancelTitle = 'Отменить заказ';
  static const String _cancelHintText = 'Причина отмены';
  static const String _cancelText =
      'Укажи причину отмены заказа. Она отобразится в мини-приложении заказчика';
  static const List<String> _cancelAutofillHints = [
    'По желанию заказчика',
    'Не удалось связаться с заказчиком',
  ];

  Future<String?> showCancelDialog(BuildContext context) async {
    final String? message = await AppTextFieldDialog.show(
      context,
      title: _cancelTitle,
      description: _cancelText,
      hintText: _cancelHintText,
      autofillHints: _cancelAutofillHints,
    );

    return message;
  }
}
