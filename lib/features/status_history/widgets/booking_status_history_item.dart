part of '../status_history_feature.dart';

class _BookingStatusHistoryItem extends StatelessWidget {
  const _BookingStatusHistoryItem(this.item, {required this.isCurrent});

  final bool isCurrent;
  final BookingStatusHistoryItem item;

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
        BookingStatus.REQUEST => Assets.icons.box.dark,
        BookingStatus.PENDING => Assets.icons.clock.dark,
        BookingStatus.COMPLETED => Assets.icons.doubleCheck.dark,
        BookingStatus.CANCELLED => Assets.icons.cross.dark,
      };
}
