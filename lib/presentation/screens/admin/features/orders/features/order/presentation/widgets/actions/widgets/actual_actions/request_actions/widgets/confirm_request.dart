part of '../../../../../../admin_order_screen.dart';

class _ConfirmRequest extends StatelessWidget
    with
        ConfirmationDialogMixin,
        SetTotalCostDialogMixin,
        SetAssigneeDialogMixin {
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

    late double? totalCost;
    late bool? isConfirmed;

    if (order.costFrom) {
      totalCost = await showSetTotalCostDialog(context);
      if (totalCost == null) return;
    } else {
      isConfirmed = await showConfirmationDialog(context);
      if (isConfirmed == null) return;
      if (!isConfirmed) return;
    }

    if (!context.mounted) return;

    StaffMember? assignee = await showSetAssigneeDialog(context, state: state);

    if (assignee == null) return;

    return bloc.add(
      AdminOrderEvent.updateOrderStatus(
        OrderStatus.PENDING,
        totalCost: totalCost,
        assignee: assignee,
      ),
    );
  }
}
