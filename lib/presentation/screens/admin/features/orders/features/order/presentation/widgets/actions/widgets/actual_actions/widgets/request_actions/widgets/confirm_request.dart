part of '../../../../../../../admin_order_screen.dart';

class _ConfirmRequest extends StatelessWidget with RequestDialogsMixin {
  const _ConfirmRequest(this.order);

  @override
  final Order order;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminStaffBloc, AdminStaffState>(
      builder: (context, state) {
        return _ExpandedWrapper.mobile(
          child: AppButton(
            text: 'Принять',
            onTap: () => _onTap(context, state: state),
            backgroundColor: context.colors.statuses.pending,
            contentColor: context.colors.background,
          ),
        );
      },
    );
  }

  Future<void> _onTap(
    BuildContext context, {
    required AdminStaffState state,
  }) async {
    final AdminOrderBloc bloc = context.read();

    double? newTotalCost = await showCostDialog(context);

    if (newTotalCost == null) return;
    if (!context.mounted) return;

    StaffMember? assignee = await showAssigneeDialog(context, state: state);

    if (assignee == null) return;

    return bloc.add(
      AdminOrderEvent.updateOrderStatus(
        OrderStatus.PENDING,
        totalCost: newTotalCost,
        assignee: assignee,
      ),
    );
  }
}
