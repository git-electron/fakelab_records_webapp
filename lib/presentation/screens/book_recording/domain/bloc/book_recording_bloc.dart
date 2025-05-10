import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/booking.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'book_recording_event.dart';
part 'book_recording_state.dart';
part 'book_recording_bloc.freezed.dart';

@injectable
class BookRecordingBloc extends Bloc<BookRecordingEvent, BookRecordingState> {
  BookRecordingBloc() : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);
  }

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
}
