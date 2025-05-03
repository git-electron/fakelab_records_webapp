enum StaffActivity {
  ARTIST('Артист'),
  PRODUCER('Продюсер'),
  SOUND_ENGINEER('Звукорежиссёр'),
  MIX_ENGINEER('Микс-инженер'),
  MASTERING_ENGINEER('Мастеринг-инженер');

  const StaffActivity(this.title);

  final String title;
}
