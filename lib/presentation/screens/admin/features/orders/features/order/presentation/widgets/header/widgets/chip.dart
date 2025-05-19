part of '../../../admin_order_screen.dart';

class _Chip extends StatelessWidget {
  const _Chip.request()
      : text = 'НОВОЕ!',
        color = AppColors.primary,
        textColor = AppColors.white;

  _Chip.fromStatus(OrderStatus status)
      : text = status.title,
        color = status.color,
        textColor = null;

  final String text;
  final Color color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const Pad(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Text(
        text,
        style: context.styles.title3.copyWith(
          fontSize: 12,
          color: textColor ?? context.colors.background,
        ),
      ),
    );
  }
}
