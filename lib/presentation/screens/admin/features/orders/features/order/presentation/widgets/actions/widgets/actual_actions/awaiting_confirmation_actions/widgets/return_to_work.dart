part of '../../../../../../admin_order_screen.dart';

class _ReturnToWork extends StatelessWidget with ReturnToWorkDialogMixin {
  const _ReturnToWork(this.order);

  @override
  final Order order;

  @override
  Widget build(BuildContext context) {
    return _ExpandedWrapper.mobile(
      child: AppButton(
        text: 'Вернуть в работу',
        onTap: () => _onTap(context),
        backgroundColor: context.colors.statuses.inProgress,
        contentColor: context.colors.background,
      ),
    );
  }

  Future<void> _onTap(BuildContext context) async {
    final AdminOrderBloc bloc = context.read();

    final String? message = await showReturnToWorkDialog(context);

    if (message == null) return;

    bloc.add(
      AdminOrderEvent.updateOrderStatus(
        OrderStatus.IN_PROGRESS,
        message: message,
      ),
    );
  }
}
