enum StaffActivity {
  ARTIST('Артист'),
  PRODUCER('Продюсер'),
  MIXING_ENGINEER('Звукорежиссёр'),
  MASTERING_ENGINEER('Мастеринг-инженер');

  const StaffActivity(this.title);

  final String title;
}
