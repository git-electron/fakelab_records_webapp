part of '../checkout_feature.dart';

class _CheckoutHint extends StatelessWidget {
  const _CheckoutHint.hint(this.hint);

  final CheckoutHint hint;

  @override
  Widget build(BuildContext context) {
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
            child: Text(hint.text, style: context.styles.footer2),
          ),
        ],
      ),
    );
  }
}
