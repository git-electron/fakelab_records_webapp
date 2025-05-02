enum StaffActivity {
  ARTIST('Артист'),
  PRODUCER('Продюсер'),
  MIX_ENGINEER('Микс-инженер'),
  SOUND_ENGINEER('Звукорежиссёр'),
  MASTERING_ENGINEER('Мастеринг-инженер');

  const StaffActivity(this.title);

  final String title;
}
