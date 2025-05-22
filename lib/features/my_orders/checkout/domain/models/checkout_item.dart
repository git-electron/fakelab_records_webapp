class CheckoutItem {
  CheckoutItem({
    required this.title,
    required this.totalCost,
    this.costFrom = false,
  }) : isTotal = false;

  CheckoutItem.total({
    required this.totalCost,
    this.costFrom = false,
  })  : title = 'Общая стоимость',
        isTotal = true;

  final String title;
  final double totalCost;
  final bool costFrom;
  final bool isTotal;
}
