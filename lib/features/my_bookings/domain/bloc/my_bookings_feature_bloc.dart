import 'dart:async';

import 'package:fakelab_records_webapp/features/my_bookings/domain/models/booking/booking.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../../../../core/domain/models/result/result.dart';
import '../../../../core/utils/try_or/try_or_null.dart';
import '../../data/client/bookings_client.dart';
import '../models/my_bookings_feature_bloc_data/my_bookings_feature_bloc_data.dart';
import '../models/type_policy/type_policy.dart';

part 'my_bookings_feature_bloc.freezed.dart';
part 'my_bookings_feature_event.dart';
part 'my_bookings_feature_state.dart';

@injectable
class MyBookingsFeatureBloc
    extends Bloc<MyBookingsFeatureEvent, MyBookingsFeatureState> {
  MyBookingsFeatureBloc(
    this._userBloc,
    this._bookingsClient,
    @factoryParam MyBookingsFeatureBlocData data,
  )   : _typePolicy = data.typePolicy,
        super(const _Loading()) {
    on<_SetError>(_onSetError);
    on<_SetLoadedList>(_onSetLoadedList);
    on<_SetLoadedSingle>(_onSetLoadedSingle);
    on<_SetLoading>(_onSetLoading);

    tryOrNullAsync(_getData);
    _userStateSubscription = _userBloc.stream.listen(_onUserStateEvent);
  }

  @override
  Future<void> close() {
    _userStateSubscription.cancel();
    return super.close();
  }

  final UserBloc _userBloc;
  final BookingsClient _bookingsClient;
  final MyBookingsTypePolicy _typePolicy;

  late final StreamSubscription _userStateSubscription;

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<MyBookingsFeatureState> emit,
  ) async {
    emit(const MyBookingsFeatureState.loading());
  }

  Future<void> _onSetLoadedList(
    _SetLoadedList event,
    Emitter<MyBookingsFeatureState> emit,
  ) async {
    emit(MyBookingsFeatureState.loadedList(event.bookings));
  }

  Future<void> _onSetLoadedSingle(
    _SetLoadedSingle event,
    Emitter<MyBookingsFeatureState> emit,
  ) async {
    emit(MyBookingsFeatureState.loadedSingle(event.booking));
  }

  Future<void> _onSetError(
    _SetError event,
    Emitter<MyBookingsFeatureState> emit,
  ) async {
    emit(MyBookingsFeatureState.error(event.message));
  }

  void _onUserStateEvent(UserState userState) {
    if (userState.isAuthorized && !state.isLoaded) _getData();
  }

  Future<void> _getData() async {
    return switch (_typePolicy) {
      MyBookingsTypePolicy.list => _getBookings(),
      MyBookingsTypePolicy.single => _getUpcomingBooking(),
    };
  }

  Future<void> _getBookings() async {
    final int userId = _userBloc.state.user!.id;
    add(const MyBookingsFeatureEvent.setLoading());
    final Result<List<Booking>> result =
        await _bookingsClient.getBookings(userId);
    result.when(
      success: (bookings) {
        add(MyBookingsFeatureEvent.setLoadedList(bookings));
      },
      error: (message) => add(MyBookingsFeatureEvent.setError(message)),
    );
  }

  Future<void> _getUpcomingBooking() async {
    final int userId = _userBloc.state.user!.id;
    add(const MyBookingsFeatureEvent.setLoading());
    final Result<Booking> result =
        await _bookingsClient.getUpcomingBooking(userId);
    result.when(
      success: (booking) {
        add(MyBookingsFeatureEvent.setLoadedSingle(booking));
      },
      error: (message) => add(MyBookingsFeatureEvent.setError(message)),
    );
  }
}
