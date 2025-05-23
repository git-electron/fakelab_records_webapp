import 'package:freezed_annotation/freezed_annotation.dart';

import '../../bloc/bookings_bloc/bookings_bloc.dart';

part 'book_recording_bloc_data.freezed.dart';

@freezed
class BookRecordingBlocData with _$BookRecordingBlocData {
  const factory BookRecordingBlocData({
    required DateTime selectedTime,
    required Duration selectedDuration,
    required BookingsBloc bookingsBloc,
  }) = _BookRecordingBlocData;
}
