import 'package:injectable/injectable.dart';

@injectable
class IdGenerator {
  String generate() {
    final DateTime future = DateTime(2200);
    final DateTime now = DateTime.now();

    final int microseconds = future.difference(now).inMicroseconds;
    return '$microseconds';
  }
}
