class CheckoutItem {
  CheckoutItem({
    required this.title,
    required this.totalCost,
    this.costFrom = false,
  })  : isTotal = false,
        isPrepayment = false,
        prepaymentPercent = 0;

  CheckoutItem.prepayment({
    required this.totalCost,
    required this.prepaymentPercent,
    this.costFrom = false,
  })  : title = 'Предоплата ${(prepaymentPercent * 100).round()}%',
        isTotal = false,
        isPrepayment = true;

  CheckoutItem.total({
    required this.totalCost,
    this.costFrom = false,
  })  : title = 'Общая стоимость',
        isTotal = true,
        isPrepayment = false,
        prepaymentPercent = 0;

  final String title;
  final double totalCost;
  final double prepaymentPercent;

  final bool isTotal;
  final bool costFrom;
  final bool isPrepayment;
}
