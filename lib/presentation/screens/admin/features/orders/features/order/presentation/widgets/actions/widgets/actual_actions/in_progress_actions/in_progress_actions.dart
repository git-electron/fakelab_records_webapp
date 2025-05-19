part of '../../../../../admin_order_screen.dart';

class _InProgressActions extends StatelessWidget with ConfirmationDialogMixin {
  const _InProgressActions(this.order);

  @override
  final Order order;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onTap: () => _onTap(context),
      text: 'На проверку клиентом',
      backgroundColor: context.colors.statuses.awaitingConfirmation,
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
        OrderStatus.AWAITING_CONFIRMATION,
      ),
    );
  }
}
