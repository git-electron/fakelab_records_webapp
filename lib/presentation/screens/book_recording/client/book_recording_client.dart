import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:logger/logger.dart';

import '../../../../core/domain/models/result/result.dart';
import '../../../../main.dart';
import '../domain/models/booking/booking.dart';

@injectable
class BookRecordingClient {
  BookRecordingClient(this._ref, this._logger);

  final Logger _logger;
  final DatabaseReference _ref;

  static const String _errorMessage = 'Failed to create booking';

  Future<Result<Booking>> createBooking(Booking booking) async {
    if (isDevelopment) return Result.success(booking);

    try {
      final String path = 'bookings/${booking.id}';

      _logger.i('''Realtime Database create request:
Path: $path
Data: $order''');

      await _ref.child(path).set(booking.toJson());

      return Result.success(booking);
    } catch (error) {
      _logger.e(_errorMessage, error: error);
      return Result.error(error.toString());
    }
  }
}
