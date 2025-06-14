import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../../../../../../features/my_bookings/domain/bloc/my_bookings_feature_bloc.dart';
import '../../../../../../features/my_orders/domain/bloc/my_orders_feature_bloc.dart';
import '../../models/home_bloc_data/home_bloc_data.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._userBloc,
    @factoryParam HomeBlocData data,
  )   : myOrdersFeatureBloc = data.myOrdersFeatureBloc,
        myBookingsFeatureBloc = data.myBookingsFeatureBloc,
        super(const _HomeState()) {
    on<_UserStateChanged>(_onUserStateChanged);
    on<_MyOrdersFeatureStateChanged>(_onMyOrdersFeatureStateChanged);

    _userStateSubscription = _userBloc.stream.listen(_userStateListener);
    _myOrdersFeatureStateSubscription =
        myOrdersFeatureBloc.stream.listen(_myOrdersFeatureStateListener);
  }

  @override
  Future<void> close() {
    _userStateSubscription.cancel();
    _myOrdersFeatureStateSubscription.cancel();
    return super.close();
  }

  final UserBloc _userBloc;
  final MyOrdersFeatureBloc myOrdersFeatureBloc;
  final MyBookingsFeatureBloc myBookingsFeatureBloc;

  late final StreamSubscription _userStateSubscription;
  late final StreamSubscription _myOrdersFeatureStateSubscription;

  Future<void> _onUserStateChanged(
    _UserStateChanged event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(userState: event.state));
  }

  Future<void> _onMyOrdersFeatureStateChanged(
    _MyOrdersFeatureStateChanged event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(myOrdersFeatureState: event.state));
  }

  void _userStateListener(UserState state) =>
      add(HomeEvent.userStateChanged(state));

  void _myOrdersFeatureStateListener(MyOrdersFeatureState state) =>
      add(HomeEvent.myOrdersFeatureStateChanged(state));
}
