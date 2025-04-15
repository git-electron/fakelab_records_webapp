enum OrderType {
  MIX('Сведение'),
  MASTERING('Мастеринг'),
  BEAT('Кастомный бит', titleForCard: 'Кастомный\nбит'),
  MIX_AND_MASTERING(
    'Сведение и мастеринг',
    titleForCard: 'Сведение\nмастеринг',
  );

  const OrderType(
    this.title, {
    this.titleForCard,
  });

  final String title;
  final String? titleForCard;
}
