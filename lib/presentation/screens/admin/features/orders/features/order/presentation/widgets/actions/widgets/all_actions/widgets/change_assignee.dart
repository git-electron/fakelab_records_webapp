part of '../../../../../admin_order_screen.dart';

class _ChangeAssignee extends StatelessWidget with ChangeAssigneeDialogMixin {
  const _ChangeAssignee(this.order);

  @override
  final Order order;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminStaffBloc, AdminStaffState>(
      builder: (context, state) {
        return AppButton.primary(
          text: 'Изменить исполнителя',
          onTap: () => _onTap(context, state: state),
          icon: Assets.icons.user.dark,
        );
      },
    );
  }

  Future<void> _onTap(
    BuildContext context, {
    required AdminStaffState state,
  }) async {
    final AdminOrderBloc bloc = context.read();

    final StaffMember? assignee =
        await showChangeAssigneeDialog(context, state: state);

    if (assignee == null) return;
    if (assignee == order.assignee) return;

    bloc.add(AdminOrderEvent.updateOrderAssignee(assignee));
  }
}
