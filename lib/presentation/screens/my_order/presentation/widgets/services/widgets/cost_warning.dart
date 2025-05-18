
part of '../../../my_order_screen.dart';

class _CostWarning extends StatelessWidget {
  const _CostWarning(this.order);

  final Order order;

  @override
  Widget build(BuildContext context) {
    if (order.costFrom && !order.isCancelled) return const SizedBox();

    return Container(
      margin: const Pad(top: 10),
      padding: const Pad(all: 10),
      decoration: ShapeDecoration(
        color: context.colors.background,
        shape: BorderRadius.circular(10).smoothShape(),
      ),
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.icons.question.gray.svg(),
          Expanded(
            child: Text(_text, style: context.styles.footer2),
          ),
        ],
      ),
    );
  }

  static const String _text =
      'Точная стоимость заказа станет известна после подтверждения менеджером';
}