import 'dart:async';

import 'package:fakelab_records_webapp/core/extensions/duration_extensions.dart';
import 'package:fakelab_records_webapp/core/utils/id_generator/id_generator.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/client/book_recording_client.dart';
import 'package:fakelab_records_webapp/features/my_bookings/domain/models/booking/booking_status.dart';
import 'package:fakelab_records_webapp/features/my_bookings/domain/models/booking/filters/booking_filters.dart';
import 'package:fakelab_records_webapp/features/my_bookings/domain/models/booking/status_history_item/booking_status_history_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../../../../../../core/domain/models/result/result.dart';
import '../../../../../../core/domain/models/user/user.dart';
import '../../../../../../core/router/router.dart';
import '../../../../../../features/checkout/domain/models/checkout_item.dart';
import '../../models/book_recording_bloc_data/book_recording_bloc_data.dart';
import '../../../../../../features/my_bookings/domain/models/booking/booking.dart';
import '../bookings_bloc/bookings_bloc.dart';

part 'book_recording_event.dart';
part 'book_recording_state.dart';
part 'book_recording_bloc.freezed.dart';

@injectable
class BookRecordingBloc extends Bloc<BookRecordingEvent, BookRecordingState> {
  BookRecordingBloc(
    this._router,
    this._userBloc,
    this._idGenerator,
    this._bookRecordingClient,
    @factoryParam BookRecordingBlocData data,
  )   : _bookingsBloc = data.bookingsBloc,
        super(_BookRecordingState(
          bookingsState: data.bookingsBloc.state,
          selectedTime: data.selectedTime,
          selectedDuration: data.selectedDuration,
        )) {
    on<_BookButtonPressed>(_onBookButtonPressed);
    on<_BookingsStateChanged>(_onBookingsStateChanged);

    _bookingsStateSubscription =
        _bookingsBloc.stream.listen(_bookingsStateListener);
  }

  @override
  Future<void> close() {
    _bookingsStateSubscription.cancel();
    return super.close();
  }

  final AppRouter _router;
  final UserBloc _userBloc;
  final IdGenerator _idGenerator;
  final BookingsBloc _bookingsBloc;
  final BookRecordingClient _bookRecordingClient;

  late final StreamSubscription _bookingsStateSubscription;

  Future<void> _onBookButtonPressed(
    _BookButtonPressed event,
    Emitter<BookRecordingState> emit,
  ) async {
    if (!_userBloc.state.isAuthorized) return;

    emit(state.copyWith(isBookButtonLoading: true));
    await _createBooking(emit);
    await _userBloc.refreshUser();
    emit(state.copyWith(isBookButtonLoading: false));
  }

  Future<void> _onBookingsStateChanged(
    _BookingsStateChanged event,
    Emitter<BookRecordingState> emit,
  ) async {
    emit(state.copyWith(bookingsState: event.bookingsState));
  }

  void _bookingsStateListener(BookingsState bookingsState) =>
      add(BookRecordingEvent.bookingsStateChanged(bookingsState));

  Future<void> _createBooking(Emitter<BookRecordingState> emit) async {
    final bool isAvailable = await _checkAvailability();

    if (!isAvailable) return;

    if (state.bookingsState.hasError) {
      emit(state.copyWith(errorMessage: state.bookingsState.message));
    } else {
      final Booking booking = state._booking(
        _idGenerator,
        _userBloc.state.user!,
      );

      final Result<Booking> result =
          await _bookRecordingClient.createBooking(booking);

      result.when(
        success: (booking) async {
          _router.popUntilRoot();
          await Future.delayed(const Duration());
          // TODO: _router.push(MyBookingRoute(bookingId: booking.id));
        },
        error: (message) => emit(state.copyWith(errorMessage: message)),
      );
    }
  }

  Future<bool> _checkAvailability() async {
    await _bookingsBloc.refreshBookings();
    await Future.delayed(const Duration());
    return state.isTimeAvailable;
  }
}
