import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/bloc/bookings_bloc/bookings_bloc.dart';

part 'book_recording_time_bloc_data.freezed.dart';

@freezed
class BookRecordingTimeBlocData with _$BookRecordingTimeBlocData {
  const factory BookRecordingTimeBlocData({
    required DateTime selectedDate,
    required BookingsBloc bookingsBloc,
  }) = _BookRecordingTimeBlocData;
}
