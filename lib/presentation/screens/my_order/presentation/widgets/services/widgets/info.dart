part of '../../../my_order_screen.dart';

class _Info extends StatelessWidget {
  const _Info.service(this.service)
      : isTotalCost = false,
        order = null;

  const _Info.total(this.order)
      : isTotalCost = true,
        service = null;

  final bool isTotalCost;
  final Order? order;
  final OrderService? service;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Pad(bottom: 5, top: isTotalCost ? 5 : 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            _text,
            style: context.styles.footer1.copyWith(
              color: isTotalCost ? context.colors.onBackground : null,
            ),
          ),
          Text(
            _cost,
            style: context.styles.footer1.copyWith(
              color: isTotalCost ? context.colors.onBackground : null,
            ),
          ),
        ],
      ),
    );
  }

  String get _text => isTotalCost ? 'Общая стоимость' : service!.type.title;

  String get _cost => isTotalCost
      ? _getFormattedCost(order!.totalCost, costFrom: order!.costFrom)
      : _getFormattedCost(service!.totalCost, costFrom: service!.costFrom);

  String _getFormattedCost(double cost, {required bool costFrom}) {
    final String costFormatted = cost.formatCurrency();
    return '${costFrom ? 'от ' : ''}$costFormatted';
  }
}
