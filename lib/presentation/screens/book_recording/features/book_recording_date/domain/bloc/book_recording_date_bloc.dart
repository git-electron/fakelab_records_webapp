import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/booking/booking.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'book_recording_date_bloc.freezed.dart';
part 'book_recording_date_event.dart';
part 'book_recording_date_state.dart';

@injectable
class BookRecordingDateBloc
    extends Bloc<BookRecordingDateEvent, BookRecordingDateState> {
  BookRecordingDateBloc(@factoryParam this.bookingsBloc)
      : super(_BookRecordingDateState(bookingsState: bookingsBloc.state)) {
    on<_DateSelected>(_onDateSelected);
    on<_BookingsStateChanged>(_onBookingsStateChanged);

    bookingsBloc.stream.listen(_bookingsStateListener);
  }

  final BookingsBloc bookingsBloc;

  Future<void> _onDateSelected(
    _DateSelected event,
    Emitter<BookRecordingDateState> emit,
  ) async {
    emit(state.copyWith(selectedDate: event.selectedDate));
  }

  Future<void> _onBookingsStateChanged(
    _BookingsStateChanged event,
    Emitter<BookRecordingDateState> emit,
  ) async {
    emit(state.copyWith(bookingsState: event.bookingsState));
  }

  void _bookingsStateListener(BookingsState bookingsState) =>
      add(BookRecordingDateEvent.bookingsStateChanged(bookingsState));
}
