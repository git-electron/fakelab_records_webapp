import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/bloc/my_orders_feature_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.userBloc, this.myOrdersFeatureBloc)
      : super(const _HomeState()) {
    on<_UserStateChanged>(_onUserStateChanged);
    on<_MyOrdersFeatureStateChanged>(_onMyOrdersFeatureStateChanged);

    userBloc.stream.listen(
      (state) => add(HomeEvent.userStateChanged(state)),
    );
    myOrdersFeatureBloc.stream.listen(
      (state) => add(HomeEvent.myOrdersFeatureStateChanged(state)),
    );
  }

  final UserBloc userBloc;
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
}
