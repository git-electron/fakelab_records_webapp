import 'package:fakelab_records_webapp/features/my_bookings/domain/models/booking/booking.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/domain/models/result/result.dart';
import '../../../../../core/domain/service/telegram_service.dart';
import '../../../../../core/utils/try_or/try_or_null.dart';
import '../../data/client/my_booking_client.dart';
import '../models/my_booking_bloc_data.dart';

part 'my_booking_bloc.freezed.dart';
part 'my_booking_event.dart';
part 'my_booking_state.dart';

@injectable
class MyBookingBloc extends Bloc<MyBookingEvent, MyBookingState> {
  MyBookingBloc(
    this._myBookingClient,
    this._telegramService,
    @factoryParam MyBookingBlocData data,
  )   : bookingId = data.bookingId,
        super(const _Loading()) {
    on<_SetLoading>(_onSetLoading);
    on<_SetLoaded>(_onSetLoaded);
    on<_SetError>(_onSetError);

    tryOrNullAsync(_getBooking);
    _telegramService.showBackButton();
  }

  @override
  Future<void> close() {
    _telegramService.hideBackButton();
    return super.close();
  }

  final String bookingId;
  final MyBookingClient _myBookingClient;
  final TelegramService _telegramService;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<MyBookingState> emit,
  ) async {
    return emit(const MyBookingState.loading());
  }

  Future<void> _onSetLoaded(
    _SetLoaded event,
    Emitter<MyBookingState> emit,
  ) async {
    return emit(MyBookingState.loaded(event.booking));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<MyBookingState> emit,
  ) async {
    return emit(MyBookingState.error(event.message));
  }

  Future<void> _getBooking() async {
    add(const MyBookingEvent.setLoading());
    final Result<Booking> result = await _myBookingClient.getBooking(bookingId);
    result.when(
      success: (booking) => add(MyBookingEvent.setLoaded(booking)),
      error: (message) => add(MyBookingEvent.setError(message)),
    );
  }
}
