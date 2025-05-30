import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../../core/constants/mock.dart';
import '../../../../../core/constants/types.dart';
import '../../../../../core/domain/models/result/result.dart';
import '../../../../../core/extensions/object_extensions.dart';
import '../../../../../features/my_bookings/domain/models/booking/booking.dart';
import '../../../../../main.dart';

@injectable
class MyBookingClient {
  MyBookingClient(this._ref, this._logger);

  final Logger _logger;
  final DatabaseReference _ref;

  static const String _errorMessage = 'Failed to get booking';
  final Result<Booking> _notFoundResult =
      Result.error('Бронирование не найдено');

  Future<Result<Booking>> getBooking(String bookingId) async {
    if (isDevelopment) {
      final Booking? mockBooking = Mock.getBooking(bookingId);
      if (mockBooking != null) {
        return Result.success(mockBooking);
      } else {
        return _notFoundResult;
      }
    }

    try {
      final String path = 'bookings/$bookingId';

      final DataSnapshot snapshot = await _ref.child(path).get();
      final bool isExists = snapshot.exists;

      if (!isExists) return _notFoundResult;

      final Json? json = snapshot.value.firebaseResponseToJson();

      _logger.i('''Realtime Database request:
Path: $path
Data: $json''');

      if (json == null) return _notFoundResult;

      final Booking booking = Booking.fromJson(json);
      return Result.success(booking);
    } catch (error) {
      _logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
