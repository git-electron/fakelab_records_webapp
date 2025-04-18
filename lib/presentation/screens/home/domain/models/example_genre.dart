enum ExampleGenre {
  HIP_HOP('Хип-хоп'),
  POP('Поп'),
  ROCK('Рок'),
  AMBIENT('Эмбиент'),
  EDM('EDM');

  const ExampleGenre(this.title);

  final String title;
}