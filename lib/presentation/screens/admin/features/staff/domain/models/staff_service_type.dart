enum StaffServiceType {
  RECORDING('Запись'),
  MIX('Сведение'),
  MASTERING('Мастеринг'),
  BEAT('Кастомный бит');

  const StaffServiceType(this.title);

  final String title;
}
