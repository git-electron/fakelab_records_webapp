part of '../status_history_feature.dart';

class _StatusHistoryItem extends StatelessWidget {
  const _StatusHistoryItem({
    required this.icon,
    required this.color,
    required this.title,
    required this.message,
    required this.isCurrent,
    required this.dateChanged,
  });

  final Color color;
  final String title;
  final bool isCurrent;
  final String? message;
  final SvgGenImage icon;
  final DateTime dateChanged;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isCurrent ? 1 : .25,
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: ShapeDecoration(
              color: color,
              shape: BorderRadius.circular(15).smoothShape(),
            ),
            alignment: Alignment.center,
            child: icon.svg(height: 25, width: 25),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: context.styles.body2),
              const Gap(5),
              Text(_dateTime, style: context.styles.footer1),
              if (message.isNotNullAndEmpty)
                Text(message!, style: context.styles.footer1),
            ],
          ),
        ],
      ),
    );
  }

  String get _dateTime {
    final String date = dateChanged.toDDmmYYYYwithMonths(
      withWords: true,
      isShort: false,
    );
    final String time = dateChanged.toHHmm(shouldApplyPaddingToHours: true);

    return '$date в $time';
  }
}
