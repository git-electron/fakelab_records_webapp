import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'book_recording_date_bloc.freezed.dart';
part 'book_recording_date_event.dart';
part 'book_recording_date_state.dart';

@injectable
class BookRecordingDateBloc
    extends Bloc<BookRecordingDateEvent, BookRecordingDateState> {
  BookRecordingDateBloc() : super(const _BookRecordingDateState()) {
    on<_DaySelected>(_onDaySelected);
  }

  Future<void> _onDaySelected(
    _DaySelected event,
    Emitter<BookRecordingDateState> emit,
  ) async {
    emit(BookRecordingDateState(selectedDay: event.selectedDay));
  }
}
