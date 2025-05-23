import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../../../../../../features/my_orders/domain/bloc/my_orders_feature_bloc.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._userBloc,
    @factoryParam this.myOrdersFeatureBloc,
  ) : super(const _HomeState()) {
    on<_UserStateChanged>(_onUserStateChanged);
    on<_MyOrdersFeatureStateChanged>(_onMyOrdersFeatureStateChanged);

    _userBloc.stream.listen(_userStateListener);
    myOrdersFeatureBloc.stream.listen(_myOrdersFeatureStateListener);
  }

  final UserBloc _userBloc;
  final MyOrdersFeatureBloc myOrdersFeatureBloc;

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
