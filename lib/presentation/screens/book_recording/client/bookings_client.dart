import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../core/constants/mock.dart';
import '../../../../core/constants/types.dart';
import '../../../../core/domain/models/result/result.dart';
import '../../../../core/extensions/datetime_extensions.dart';
import '../../../../core/extensions/object_extensions.dart';
import '../../../../main.dart';
import '../domain/models/booking/booking.dart';

@injectable
class BookingsClient {
  BookingsClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  static const String _errorMessage = 'Failed to get bookings';

  Future<Result<List<Booking>>> getBookings() async {
    final DateTime now = DateTime.now().toUtc();
    final DateTime today = DateTime(now.year, now.month, now.day);

    if (isDevelopment) {
      return Result.success(Mock.bookings
          .where((booking) => booking.date.isAfterOrAtSameMomentAs(today))
          .toList());
    }

    try {
      const String path = 'bookings';

      final DataSnapshot snapshot =
          await ref.child(path).orderByChild('date').startAt(today).get();

      final Json? json = snapshot.value.firebaseResponseToJson();

      logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return Result.success([]);

      final List<Booking> bookings = json.values
          .map(Booking.maybeFromJson)
          .toList()
        ..sort((a, b) => b.date.compareTo(a.date));

      return Result.success(bookings);
    } catch (error) {
      logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
