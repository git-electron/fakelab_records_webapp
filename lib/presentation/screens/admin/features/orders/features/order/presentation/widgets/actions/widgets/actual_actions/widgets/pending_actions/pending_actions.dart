part of '../../../../../../admin_order_screen.dart';

class _PendingActions extends StatelessWidget with PendingDialogsMixin {
  const _PendingActions(this.order);

  @override
  final Order order;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Взять в работу',
      onTap: () => _onTap(context),
      backgroundColor: context.colors.statuses.inProgress,
      contentColor: context.colors.background,
    );
  }

  Future<void> _onTap(BuildContext context) async {
    final AdminOrderBloc bloc = context.read();

    final bool? isConfirmed = await showConfirmationDialog(context);

    if (isConfirmed == null) return;
    if (!isConfirmed) return;

    bloc.add(
      const AdminOrderEvent.updateOrderStatus(
        OrderStatus.IN_PROGRESS,
      ),
    );
  }
}
