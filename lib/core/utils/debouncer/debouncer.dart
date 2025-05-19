import 'dart:async';

import '../../constants/types.dart';

class Debouncer {
  Debouncer();

  Timer? _timer;

  run(
    VoidCallback action, {
    Duration duration = const Duration(milliseconds: 500),
  }) {
    if (_timer != null) _timer!.cancel();

    _timer = Timer(duration, action);
  }
}
