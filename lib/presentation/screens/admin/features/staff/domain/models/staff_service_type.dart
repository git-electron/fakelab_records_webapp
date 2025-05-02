enum StaffServiceType {
  MIX('Сведение'),
  RECORDING('Запись'),
  BEAT('Кастомный бит'),
  MASTERING('Мастеринг');

  const StaffServiceType(this.title);

  final String title;
}
