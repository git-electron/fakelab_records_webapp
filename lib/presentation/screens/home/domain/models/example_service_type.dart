enum ExampleServiceType {
  BEAT('Кастомный бит'),
  RECORDING('Запись'),
  MIX('Сведение'),
  MASTERING('Мастеринг');

  const ExampleServiceType(this.title);

  final String title;
}
