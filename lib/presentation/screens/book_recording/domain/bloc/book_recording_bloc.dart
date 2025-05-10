import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/extensions/datetime_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/list_extensions.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/client/book_recording_client.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/booking.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'book_recording_event.dart';
part 'book_recording_state.dart';
part 'book_recording_bloc.freezed.dart';

@injectable
class BookRecordingBloc extends Bloc<BookRecordingEvent, BookRecordingState> {
  BookRecordingBloc(this.bookRecordingClient) : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    tryOrNullAsync(_getBookings);
  }

  final BookRecordingClient bookRecordingClient;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<BookRecordingState> emit,
  ) async {
    emit(const BookRecordingState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<BookRecordingState> emit,
  ) async {
    emit(BookRecordingState.loaded(event.bookings));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<BookRecordingState> emit,
  ) async {
    emit(BookRecordingState.error(event.message));
  }

  Future<void> _getBookings() async {
    add(const BookRecordingEvent.setLoading());
    final Result<List<Booking>> result =
        await bookRecordingClient.getBookings();
    result.when(
      success: (orders) => add(BookRecordingEvent.setLoaded(orders)),
      error: (message) => add(BookRecordingEvent.setError(message)),
    );
  }
}
