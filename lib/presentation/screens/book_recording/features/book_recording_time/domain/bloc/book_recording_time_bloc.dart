import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/core/extensions/duration_extensions.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/features/checkout/domain/models/checkout_item.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc/bookings_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/availability_type/availability_type.dart';
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/booking/booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/router/router.dart';
import '../models/book_recording_time_bloc_data.dart';

part 'book_recording_time_bloc.freezed.dart';
part 'book_recording_time_event.dart';
part 'book_recording_time_state.dart';

@injectable
class BookRecordingTimeBloc
    extends Bloc<BookRecordingTimeEvent, BookRecordingTimeState> {
  BookRecordingTimeBloc(
    this._router,
    @factoryParam BookRecordingTimeBlocData data,
  )   : _bookingsBloc = data.bookingsBloc,
        super(_BookRecordingTimeState(
          selectedDate: data.selectedDate,
          bookingsState: data.bookingsBloc.state,
        )) {
    on<_TimeSelected>(_onTimeSelected);
    on<_DurationSelected>(_onDurationSelected);
    on<_BookingsStateChanged>(_onBookingsStateChanged);
    on<_ProceedButtonPressed>(_onProceedButtonPressed);

    tryOrNullAsync(_bookingsBloc.refreshBookings);
    _bookingsBloc.stream.listen(_bookingsStateListener);
  }

  @override
  Future<void> close() {
    availabilityController.dispose();
    return super.close();
  }

  final AppRouter _router;
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

  Future<void> _onProceedButtonPressed(
    _ProceedButtonPressed event,
    Emitter<BookRecordingTimeState> emit,
  ) async {
    if (!state.canProceed) return;
    if (state.selectedTime == null) return;

    _router.push(BookRecordingRoute(
      bookingsBloc: _bookingsBloc,
      selectedTime: state.selectedTime!,
      selectedDuration: state.selectedDuration,
    ));
  }

  void _bookingsStateListener(BookingsState bookingsState) =>
      add(BookRecordingTimeEvent.bookingsStateChanged(bookingsState));
}
