part of '../../../../../../admin_order_screen.dart';

class _MarkAsReady extends StatelessWidget with ConfirmationDialogMixin {
  const _MarkAsReady(this.order);

  @override
  final Order order;

  @override
  Widget build(BuildContext context) {
    return _ExpandedWrapper.mobile(
      child: AppButton(
        text: 'Заказ готов',
        onTap: () => _onTap(context),
        backgroundColor: context.colors.statuses.completed,
        contentColor: context.colors.background,
      ),
    );
  }

  Future<void> _onTap(BuildContext context) async {
    final AdminOrderBloc bloc = context.read();

    final bool? isConfirmed = await showConfirmationDialog(context);

    if (isConfirmed == null) return;
    if (!isConfirmed) return;

    bloc.add(
      const AdminOrderEvent.updateOrderStatus(
        OrderStatus.COMPLETED,
      ),
    );
  }
}
