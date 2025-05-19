import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_button.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_dialog/app_dropdown_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/avatar/avatar.dart';
import 'package:flutter/material.dart';

mixin SetAssigneeDialogMixin {
  Order get order;

  static const String _assigneeTitle = 'Указать исполнителя';
  static const String _assigneeHintText = 'Исполнитель заказа';
  static const String _assigneeDescription = 'Укажи исполнителя заказа';
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
      description: _assigneeDescription,
      isSearchEnabled: true,
      initialValue: order.assignee,
      searchHintText: _assigneeSearchHintText,
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

  Widget _orderAssigneeMenuItemBuilder(item) => _AssigneeBuilder(item.value);

  Widget _orderAssigneeSelectedItemBuilder(item) =>
      _AssigneeBuilder(item.value, isSelected: true);
}

class _AssigneeBuilder extends StatelessWidget {
  const _AssigneeBuilder(
    this.assignee, {
    this.isSelected = false,
  });

  final StaffMember assignee;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        if (assignee.photoUrl.isNotNullAndEmpty)
          Avatar(
            photoUrl: assignee.photoUrl!,
            size: 30,
          ),
        Text(
          assignee.fullName,
          style: _style(context),
        ),
      ],
    );
  }

  TextStyle _style(BuildContext context) => isSelected
      ? context.styles.body2
      : context.styles.footer1.copyWith(
          color: context.colors.onBackground,
        );
}
