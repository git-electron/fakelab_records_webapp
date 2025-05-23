import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/core/router/router.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
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
  BookRecordingDateBloc(this.router, @factoryParam this.bookingsBloc)
      : super(_BookRecordingDateState(bookingsState: bookingsBloc.state)) {
    on<_DateSelected>(_onDateSelected);
    on<_BookingsStateChanged>(_onBookingsStateChanged);

    bookingsBloc.stream.listen(_bookingsStateListener);
  }

  final AppRouter router;
  final BookingsBloc bookingsBloc;

  Future<void> _onDateSelected(
    _DateSelected event,
    Emitter<BookRecordingDateState> emit,
  ) async {
    emit(state.copyWith(selectedDate: event.selectedDate));
    await Future.delayed(kAnimationDuration);
    router.push(BookRecordingTimeRoute(
      selectedDate: event.selectedDate,
      bookingsBloc: bookingsBloc,
    ));
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
