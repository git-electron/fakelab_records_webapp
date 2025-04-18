extension DurationExtensions on Duration {
  String toMMss({bool shoudApplyPaddingToMinutes = false}) {
    int minutes = inMinutes.remainder(60).abs();
    int seconds = inSeconds.remainder(60).abs();

    return '${shoudApplyPaddingToMinutes ? _pad(minutes) : minutes}:${_pad(seconds)}';
  }

  String toHHmmSS({bool shoudApplyPaddingToHours = false}) {
    int hours = inHours.remainder(24).abs();
    int minutes = inMinutes.remainder(60).abs();
    int seconds = inSeconds.remainder(60).abs();

    return '${shoudApplyPaddingToHours ? _pad(hours) : hours}:${_pad(minutes)}:${_pad(seconds)}';
  }

  String _pad(int value) => value.toString().padLeft(2, '0');
}
