import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/booking/booking.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../core/constants/mock.dart';
import '../../../../core/constants/types.dart';
import '../../../../core/domain/models/result/result.dart';
import '../../../../core/extensions/object_extensions.dart';
import '../../../../main.dart';
import '../../../../presentation/screens/book_recording/domain/models/booking/booking_status.dart';

@injectable
class BookingsClient {
  BookingsClient(this.ref, this.logger);

  final Logger logger;
  final DatabaseReference ref;

  static const String _bookingsErrorMessage = 'Failed to get bookings';

  Future<Result<List<Booking>>> getBookings(int userId) async {
    if (isDevelopment) return Result.success(Mock.bookings);

    try {
      const String path = 'bookings';
      final Query query =
          ref.child(path).orderByChild('customer/id').equalTo(userId);
      final DataSnapshot snapshot = await query.get();

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
      logger.e(_bookingsErrorMessage, error: error);
      return Result.error(error.toString());
    }
  }

  final Result<Booking> _notFoundResult =
      Result.error('Бронирование не найдено');
  static const String _upcomingBookingErrorMessage =
      'Failed to get upcoming booking';

  Future<Result<Booking>> getUpcomingBooking(int userId) async {
    if (isDevelopment) return Result.success(Mock.bookings.first);

    try {
      const String path = 'bookings';
      final Query query = ref
          .child(path)
          .orderByChild('filters/userIdStatus')
          .equalTo('$userId-${BookingStatus.REQUEST.name}');
      final DataSnapshot snapshot = await query.limitToFirst(1).get();
      final bool isExists = snapshot.exists;

      if (!isExists) return _notFoundResult;

      final Json? json = snapshot.value.firebaseResponseToJson();

      logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return _notFoundResult;

      final Booking booking = Booking.fromJson(json);

      return Result.success(booking);
    } catch (error) {
      logger.e(_upcomingBookingErrorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
