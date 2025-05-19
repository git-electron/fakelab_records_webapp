part of '../../../../admin_order_screen.dart';

class _AllActions extends StatelessWidget {
  const _AllActions(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return _ExpandedWrapper.desktop(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Все действия', style: context.styles.footer1),
          _actions,
        ],
      ),
    );
  }

  Widget get _actions => Column(
        spacing: 5,
        children: [
          _ChangeStatus(order),
          if (order.isTotalCostMutable) _ChangeTotalCost(order),
          if (order.isAssigneeMutable) _ChangeAssignee(order),
          if (order.canBeCancelled) _Cancel(order),
        ],
      );
}
