enum OrderType {
  MIX('Сведение', totalCost: 2500),
  MASTERING('Мастеринг', totalCost: 500),
  BEAT(
    'Кастомный бит',
    titleForCard: 'Кастомный\nбит',
    totalCost: 10000,
  ),
  MIX_AND_MASTERING(
    'Сведение и мастеринг',
    titleForCard: 'Сведение\nмастеринг',
    totalCost: 3000,
  );

  const OrderType(
    this.title, {
    required this.totalCost,
    this.titleForCard,
  });

  final String title;
  final double totalCost;
  final String? titleForCard;
}
