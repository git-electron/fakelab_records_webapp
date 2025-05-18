import 'package:fakelab_records_webapp/core/constants/mock.dart';
import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/object_extensions.dart';
import 'package:fakelab_records_webapp/main.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/booking/booking.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

@injectable
class BookingsClient {
  BookingsClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

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
          .map((booking) => Booking.fromJson(booking))
          .toList()
        ..sort((a, b) => b.date.compareTo(a.date));

      return Result.success(bookings);
    } catch (error) {
      logger.e('Failed to get bookings', error: error);
      return Result.error(error.toString());
    }
  }
}
