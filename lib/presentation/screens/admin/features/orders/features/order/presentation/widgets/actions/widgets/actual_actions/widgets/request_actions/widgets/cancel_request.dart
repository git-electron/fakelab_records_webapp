part of '../../../../../../../admin_order_screen.dart';

class _CancelRequest extends StatelessWidget with RequestDialogsMixin {
  const _CancelRequest(this.order);

  @override
  final Order order;

  @override
  Widget build(BuildContext context) {
    return _ExpandedWrapper.mobile(
      child: AppButton(
        text: 'Отменить',
        onTap: () => _onTap(context),
        backgroundColor: context.colors.primary,
        contentColor: context.colors.onBackground,
      ),
    );
  }

  Future<void> _onTap(BuildContext context) async {
    final AdminOrderBloc bloc = context.read();

    final String? message = await showCancelDialog(context);

    if (message == null) return;

    bloc.add(
      AdminOrderEvent.updateOrderStatus(
        OrderStatus.CANCELLED,
        message: message,
      ),
    );
  }
}
