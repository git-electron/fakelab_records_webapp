part of '../../../../../admin_orders_screen.dart';

class _TotalCost extends StatelessWidget {
  const _TotalCost(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Expanded(
      child: _PropertyTextSpan(
        icon: Assets.icons.money.gray,
        children: [
          if (order.costFrom)
            TextSpan(
              text: 'от ',
              style: _footer(context, isMobile: isMobile),
            ),
          TextSpan(
            text: order.totalCost.formatCurrency(),
            style: _orderCostTextStyle(context, isMobile: isMobile),
          ),
        ],
      ),
    );
  }

  TextStyle _footer(BuildContext context, {required bool isMobile}) =>
      isMobile ? context.styles.footer3 : context.styles.footer1;

  TextStyle? _orderCostTextStyle(
    BuildContext context, {
    required bool isMobile,
  }) {
    final bool shouldReplaceStyle = order.isCompleted || order.isCancelled;

    if (!shouldReplaceStyle) return null;

    final TextStyle style = _footer(context, isMobile: isMobile);
    return style.copyWith(
      color: order.status.color,
      decoration: _textDecoration,
      decorationColor: order.status.color,
    );
  }

  TextDecoration? get _textDecoration {
    return order.isCancelled ? TextDecoration.lineThrough : null;
  }
}
