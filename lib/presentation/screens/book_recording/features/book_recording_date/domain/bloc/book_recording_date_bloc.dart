import 'dart:async';

import 'package:fakelab_records_webapp/core/router/router.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc/bookings_bloc.dart';
import 'package:fakelab_records_webapp/features/my_bookings/domain/models/booking/booking.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../models/book_recording_date_bloc_data.dart';

part 'book_recording_date_bloc.freezed.dart';
part 'book_recording_date_event.dart';
part 'book_recording_date_state.dart';

@injectable
class BookRecordingDateBloc
    extends Bloc<BookRecordingDateEvent, BookRecordingDateState> {
  BookRecordingDateBloc(
    this._router,
    this._userBloc,
    @factoryParam BookRecordingDateBlocData data,
  )   : _bookingsBloc = data.bookingsBloc,
        super(_BookRecordingDateState(
          userState: _userBloc.state,
          bookingsState: data.bookingsBloc.state,
        )) {
    on<_DateSelected>(_onDateSelected);
    on<_UserStateChanged>(_onUserStateChanged);
    on<_BookingsStateChanged>(_onBookingsStateChanged);

    _userStateSubscription = _userBloc.stream.listen(_userStateListener);
    _bookingsStateSubscription =
        _bookingsBloc.stream.listen(_bookingsStateListener);
  }

  @override
  Future<void> close() {
    _userStateSubscription.cancel();
    _bookingsStateSubscription.cancel();
    return super.close();
  }

  final AppRouter _router;
  final UserBloc _userBloc;
  final BookingsBloc _bookingsBloc;

  late final StreamSubscription _userStateSubscription;
  late final StreamSubscription _bookingsStateSubscription;

  Future<void> _onDateSelected(
    _DateSelected event,
    Emitter<BookRecordingDateState> emit,
  ) async {
    emit(state.copyWith(selectedDate: event.selectedDate));
    _router.push(BookRecordingTimeRoute(
      selectedDate: event.selectedDate,
      bookingsBloc: _bookingsBloc,
    ));
  }

  Future<void> _onUserStateChanged(
    _UserStateChanged event,
    Emitter<BookRecordingDateState> emit,
  ) async {
    emit(state.copyWith(userState: event.userState));
  }

  Future<void> _onBookingsStateChanged(
    _BookingsStateChanged event,
    Emitter<BookRecordingDateState> emit,
  ) async {
    emit(state.copyWith(bookingsState: event.bookingsState));
  }

  void _userStateListener(UserState userState) =>
      add(BookRecordingDateEvent.userStateChanged(userState));

  void _bookingsStateListener(BookingsState bookingsState) =>
      add(BookRecordingDateEvent.bookingsStateChanged(bookingsState));
}
