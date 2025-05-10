import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'book_recording_time_event.dart';
part 'book_recording_time_state.dart';
part 'book_recording_time_bloc.freezed.dart';

@injectable
class BookRecordingTimeBloc
    extends Bloc<BookRecordingTimeEvent, BookRecordingTimeState> {
  BookRecordingTimeBloc(@factoryParam this.selectedDay)
      : super(const _BookRecordingTimeState()) {
    on<_TimeSelected>(_onTimeSelected);
    on<_DurationSelected>(_onDurationSelected);
  }

  final DateTime selectedDay;

  Future<void> _onTimeSelected(
    _TimeSelected event,
    Emitter<BookRecordingTimeState> emit,
  ) async {
    emit(BookRecordingTimeState(selectedTime: event.selectedTime));
  }

  Future<void> _onDurationSelected(
    _DurationSelected event,
    Emitter<BookRecordingTimeState> emit,
  ) async {
    emit(BookRecordingTimeState(selectedDuration: event.selectedDuration));
  }
}
