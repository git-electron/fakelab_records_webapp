enum OrderServiceType {
  MIX('Сведение'),
  BEAT('Кастомный бит'),
  MASTERING('Мастеринг', costFrom: false);

  const OrderServiceType(
    this.title, {
    this.costFrom = true,
  });

  final String title;
  final bool costFrom;
}
