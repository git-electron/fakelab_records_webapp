part of '../../../../admin_order_screen.dart';

class _ActualActions extends StatelessWidget {
  const _ActualActions(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return _ExpandedWrapper.desktop(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Актуальное', style: context.styles.footer1),
          _buildActions(order),
        ],
      ),
    );
  }

  Widget _buildActions(Order order) => switch (order.status) {
        OrderStatus.REQUEST => _RequestActions(order),
        OrderStatus.PENDING => _PendingActions(order),
        OrderStatus.IN_PROGRESS => _InProgressActions(order),
        OrderStatus.AWAITING_CONFIRMATION =>
          _AwaitingConfirmationActions(order),
        _ => const SizedBox(),
      };
}
