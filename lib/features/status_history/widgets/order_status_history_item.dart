part of '../status_history_feature.dart';

class _OrderStatusHistoryItem extends StatelessWidget {
  const _OrderStatusHistoryItem(this.item, {required this.isCurrent});

  final bool isCurrent;
  final OrderStatusHistoryItem item;

  @override
  Widget build(BuildContext context) {
    return _StatusHistoryItem(
      icon: _icon,
      isCurrent: isCurrent,
      message: item.message,
      color: item.status.color,
      title: item.status.title,
      dateChanged: item.dateChanged,
    );
  }

  SvgGenImage get _icon => switch (item.status) {
        OrderStatus.REQUEST => Assets.icons.box.dark,
        OrderStatus.PENDING => Assets.icons.clock.dark,
        OrderStatus.IN_PROGRESS => Assets.icons.clock.dark,
        OrderStatus.AWAITING_CONFIRMATION => Assets.icons.check.dark,
        OrderStatus.COMPLETED => Assets.icons.doubleCheck.dark,
        OrderStatus.CANCELLED => Assets.icons.cross.dark,
      };
}
