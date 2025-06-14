import 'package:fakelab_records_webapp/core/domain/service/telegram_service.dart';
import 'package:fakelab_records_webapp/core/utils/is_same_day/is_same_day.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/domain/models/result/result.dart';
import '../../../../../../core/domain/models/user/user.dart';
import '../../../../../../core/extensions/datetime_extensions.dart';
import '../../../../../../core/extensions/list_extensions.dart';
import '../../../../../../core/utils/try_or/try_or_null.dart';
import '../../../client/bookings_client.dart';
import '../../models/availability_type/availability_type.dart';
import '../../../../../../features/my_bookings/domain/models/booking/booking.dart';

part 'bookings_bloc.freezed.dart';
part 'bookings_event.dart';
part 'bookings_state.dart';
part 'extensions/boolean_getters_extensions.dart';
part 'extensions/filtered_data_extensions.dart';
part 'extensions/argument_data_extensions.dart';

@injectable
class BookingsBloc extends Bloc<BookingsEvent, BookingsState> {
  BookingsBloc(this._bookingsClient, this._telegramService)
      : super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    tryOrNullAsync(_getBookings);
    _telegramService.showBackButton();
  }

  @override
  Future<void> close() {
    _telegramService.hideBackButton();
    return super.close();
  }

  final BookingsClient _bookingsClient;
  final TelegramService _telegramService;

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

  Future<void> refreshBookings() async => _getBookings();

  Future<void> _getBookings() async {
    add(const BookingsEvent.setLoading());
    final Result<List<Booking>> result = await _bookingsClient.getBookings();
    result.when(
      success: (orders) => add(BookingsEvent.setLoaded(orders)),
      error: (message) => add(BookingsEvent.setError(message)),
    );
  }
}
