import 'dart:typed_data';

import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:file_saver/file_saver.dart';
import 'package:injectable/injectable.dart';

import '../../../features/my_bookings/domain/models/booking/booking.dart';

@injectable
class CalendarUtils {
  String createIcsFileFromBooking(Booking booking) {
    final String bookingId = booking.id;
    final String dateStart = _getDateString(booking.startTime);
    final String dateEnd = _getDateString(booking.endTime);
    final String title = booking.title;
    final String description = 'Описание ${booking.id}';
    const String alarmDescription = 'Запись на студии Fakelab Records';

    return _getIcsFileString(
      bookingId: bookingId,
      dateStart: dateStart,
      dateEnd: dateEnd,
      title: title,
      description: description,
      address: businessCalendarAddress,
      alarmDescription: alarmDescription,
    );
  }

  String _getDateString(DateTime dateTime) =>
      '${dateTime.toYYYYmmDD(separator: '')}T${dateTime.toHHmmSS(separator: '', shouldApplyPaddingToHours: true)}Z';

  String _getIcsFileString({
    required String bookingId,
    required String dateStart,
    required String dateEnd,
    required String title,
    required String description,
    required String address,
    required String alarmDescription,
  }) {
    return '''BEGIN:VCALENDAR
VERSION:2.0
CALSCALE:GREGORIAN
BEGIN:VEVENT
UID:$bookingId
DTSTART:$dateStart
DTEND:$dateEnd
SUMMARY:$title
DESCRIPTION:$description
LOCATION:$address
X-MICROSOFT-CDO-BUSYSTATUS:BUSY
BEGIN:VALARM
ACTION:DISPLAY
DESCRIPTION:$alarmDescription
TRIGGER:-PT1H
END:VALARM
BEGIN:VALARM
ACTION:DISPLAY
DESCRIPTION:$alarmDescription
TRIGGER:-P1D
END:VALARM
END:VEVENT
END:VCALENDAR
''';
  }
}

extension DownloadFileString on String {
  Future<String> download(String fileName) async {
    return await $<FileSaver>().saveFile(
      name: fileName,
      ext: 'ics',
      mimeType: MimeType.custom,
      customMimeType: 'text/calendar',
      bytes: Uint8List.fromList(codeUnits),
    );
  }
}
