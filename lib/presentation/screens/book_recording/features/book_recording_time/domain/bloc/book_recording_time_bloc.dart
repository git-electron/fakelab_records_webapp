import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/core/extensions/duration_extensions.dart';
import 'package:fakelab_records_webapp/features/checkout/domain/models/checkout_item.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/availability_type/availability_type.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/booking/booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'book_recording_time_bloc.freezed.dart';
part 'book_recording_time_event.dart';
part 'book_recording_time_state.dart';

@injectable
class BookRecordingTimeBloc
    extends Bloc<BookRecordingTimeEvent, BookRecordingTimeState> {
  BookRecordingTimeBloc(
    @factoryParam DateTime selectedDate,
    @factoryParam this._bookingsBloc,
  ) : super(_BookRecordingTimeState(
          selectedDate: selectedDate,
          bookingsState: _bookingsBloc.state,
        )) {
    on<_TimeSelected>(_onTimeSelected);
    on<_DurationSelected>(_onDurationSelected);
    on<_BookingsStateChanged>(_onBookingsStateChanged);

    _bookingsBloc.stream.listen(_bookingsStateListener);
  }

  @override
  Future<void> close() {
    availabilityController.dispose();
    return super.close();
  }

  final BookingsBloc _bookingsBloc;
  final ScrollController availabilityController = ScrollController();

  Future<void> _onTimeSelected(
    _TimeSelected event,
    Emitter<BookRecordingTimeState> emit,
  ) async {
    emit(state.copyWith(selectedTime: event.selectedTime));
    emit(state.copyWith(selectedDuration: state.maxOrCurrent));

    await Future.delayed(Duration.zero);

    final AvailabilityType type = AvailabilityType.fromTime(event.selectedTime);
    final double maxExtent = availabilityController.position.maxScrollExtent;
    final double offset = switch (type) {
      AvailabilityType.morning => 0,
      AvailabilityType.afternoon => maxExtent / 2,
      AvailabilityType.evening => maxExtent,
    };

    availabilityController.animateTo(
      offset,
      duration: kAnimationDuration,
      curve: kAnimationCurve,
    );
  }

  Future<void> _onDurationSelected(
    _DurationSelected event,
    Emitter<BookRecordingTimeState> emit,
  ) async {
    emit(state.copyWith(selectedDuration: event.selectedDuration));
  }

  Future<void> _onBookingsStateChanged(
    _BookingsStateChanged event,
    Emitter<BookRecordingTimeState> emit,
  ) async {
    emit(state.copyWith(bookingsState: event.bookingsState));
  }

  void _bookingsStateListener(BookingsState bookingsState) =>
      add(BookRecordingTimeEvent.bookingsStateChanged(bookingsState));
}
