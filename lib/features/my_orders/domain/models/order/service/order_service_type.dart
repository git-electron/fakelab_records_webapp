enum OrderServiceType {
  MIX('Сведение'),
  MASTERING('Мастеринг'),
  BEAT('Кастомный бит');

  const OrderServiceType(this.title);

  final String title;
}
