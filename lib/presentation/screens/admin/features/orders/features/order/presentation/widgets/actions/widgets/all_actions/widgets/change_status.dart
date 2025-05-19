part of '../../../../../admin_order_screen.dart';

class _ChangeStatus extends StatelessWidget
    with
        ConfirmationDialogMixin,
        SetTotalCostDialogMixin,
        ChangeStatusDialogMixin,
        SetAssigneeDialogMixin,
        CancelDialogMixin {
  const _ChangeStatus(this.order);

  @override
  final Order order;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminStaffBloc, AdminStaffState>(
      builder: (context, state) {
        return AppButton.primary(
          text: 'Изменить статус',
          onTap: () => _onTap(context, state: state),
          icon: Assets.icons.pencil.dark,
        );
      },
    );
  }

  Future<void> _onTap(
    BuildContext context, {
    required AdminStaffState state,
  }) async {
    final AdminOrderBloc bloc = context.read();

    final OrderStatus? status = await showChangeStatusDialog(context);

    if (status == null) return;
    if (status == order.status) return;
    if (!context.mounted) return;

    if (order.isRequest) return _onConfirmOrder(context, status, state: state);
    if (status.isCancelled) return _onCancelOrder(context);

    return bloc.add(AdminOrderEvent.updateOrderStatus(status));
  }

  Future<void> _onConfirmOrder(
    BuildContext context,
    OrderStatus status, {
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
        status,
        totalCost: totalCost,
        assignee: assignee,
      ),
    );
  }

  Future<void> _onCancelOrder(BuildContext context) async {
    final AdminOrderBloc bloc = context.read();

    final String? message = await showCancelDialog(context);

    if (message == null) return;

    return bloc.add(
      AdminOrderEvent.updateOrderStatus(
        OrderStatus.CANCELLED,
        message: message,
      ),
    );
  }
}
