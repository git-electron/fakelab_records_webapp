import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/client/bookings_client.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/booking.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/booking_status.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/presentation/widgets/availability/widgets/availability_wrap.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bookings_event.dart';
part 'bookings_state.dart';
part 'bookings_bloc.freezed.dart';

@injectable
class BookingsBloc extends Bloc<BookingsEvent, BookingsState> {
  BookingsBloc(this.bookingsClient) : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    tryOrNullAsync(_getBookings);
  }

  final BookingsClient bookingsClient;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<BookingsState> emit,
  ) async {
    emit(const BookingsState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<BookingsState> emit,
  ) async {
    emit(BookingsState.loaded(event.bookings));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<BookingsState> emit,
  ) async {
    emit(BookingsState.error(event.message));
  }

  Future<void> _getBookings() async {
    add(const BookingsEvent.setLoading());
    final Result<List<Booking>> result = await bookingsClient.getBookings();
    result.when(
      success: (orders) => add(BookingsEvent.setLoaded(orders)),
      error: (message) => add(BookingsEvent.setError(message)),
    );
  }
}
