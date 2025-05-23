import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/bloc/bookings_bloc/bookings_bloc.dart';

part 'book_recording_date_bloc_data.freezed.dart';

@freezed
class BookRecordingDateBlocData with _$BookRecordingDateBlocData {
  const factory BookRecordingDateBlocData({
    required BookingsBloc bookingsBloc,
  }) = _BookRecordingDateBlocData;
}
