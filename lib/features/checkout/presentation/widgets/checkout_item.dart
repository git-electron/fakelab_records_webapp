part of '../checkout_feature.dart';

class _CheckoutItem extends StatelessWidget {
  const _CheckoutItem.item(this.item);

  final CheckoutItem item;

  @override
  Widget build(BuildContext context) {
    final bool isTotal = item.isTotal;

    return Padding(
      padding: Pad(bottom: 5, top: isTotal ? 5 : 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            item.title,
            style: context.styles.footer1.copyWith(
              color: isTotal ? context.colors.onBackground : null,
            ),
          ),
          Text(
            _cost,
            style: context.styles.footer1.copyWith(
              color: isTotal ? context.colors.onBackground : null,
            ),
          ),
        ],
      ),
    );
  }

  String get _cost {
    final String costFormatted = item.totalCost.formatCurrency();
    return '${item.costFrom ? 'от ' : ''}$costFormatted';
  }
}
