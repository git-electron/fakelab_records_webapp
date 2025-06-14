import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../../../../../../features/my_orders/domain/bloc/my_orders_feature_bloc.dart';
import '../../models/my_orders_bloc_data.dart';

part 'my_orders_bloc.freezed.dart';
part 'my_orders_event.dart';
part 'my_orders_state.dart';

@injectable
class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  MyOrdersBloc(
    this._userBloc,
    @factoryParam MyOrdersBlocData data,
  )   : myOrdersFeatureBloc = data.myOrdersFeatureBloc,
        super(const _MyOrdersState()) {
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

  late final StreamSubscription _userStateSubscription;
  late final StreamSubscription _myOrdersFeatureStateSubscription;

  Future<void> _onUserStateChanged(
    _UserStateChanged event,
    Emitter<MyOrdersState> emit,
  ) async {
    emit(state.copyWith(userState: event.state));
  }

  Future<void> _onMyOrdersFeatureStateChanged(
    _MyOrdersFeatureStateChanged event,
    Emitter<MyOrdersState> emit,
  ) async {
    emit(state.copyWith(myOrdersFeatureState: event.state));
  }

  void _userStateListener(UserState state) =>
      add(MyOrdersEvent.userStateChanged(state));

  void _myOrdersFeatureStateListener(MyOrdersFeatureState state) =>
      add(MyOrdersEvent.myOrdersFeatureStateChanged(state));
}
