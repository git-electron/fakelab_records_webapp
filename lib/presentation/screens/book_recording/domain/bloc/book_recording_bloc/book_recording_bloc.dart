import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/book_recording_bloc_data/book_recording_bloc_data.dart';
import '../bookings_bloc/bookings_bloc.dart';

part 'book_recording_event.dart';
part 'book_recording_state.dart';
part 'book_recording_bloc.freezed.dart';

@injectable
class BookRecordingBloc extends Bloc<BookRecordingEvent, BookRecordingState> {
  BookRecordingBloc(
    @factoryParam BookRecordingBlocData data,
  )   : _bookingsBloc = data.bookingsBloc,
        super(_BookRecordingState(
          bookingsState: data.bookingsBloc.state,
          selectedTime: data.selectedTime,
          selectedDuration: data.selectedDuration,
        )) {
    on<_BookButtonPressed>(_onBookButtonPressed);
    on<_BookingsStateChanged>(_onBookingsStateChanged);

    _bookingsBloc.stream.listen(_bookingsStateListener);
  }

  final BookingsBloc _bookingsBloc;

  Future<void> _onBookButtonPressed(
    _BookButtonPressed event,
    Emitter<BookRecordingState> emit,
  ) async {
    print('pressed');
  }

  Future<void> _onBookingsStateChanged(
    _BookingsStateChanged event,
    Emitter<BookRecordingState> emit,
  ) async {
    emit(state.copyWith(bookingsState: event.bookingsState));
  }

  void _bookingsStateListener(BookingsState bookingsState) =>
      add(BookRecordingEvent.bookingsStateChanged(bookingsState));
}
