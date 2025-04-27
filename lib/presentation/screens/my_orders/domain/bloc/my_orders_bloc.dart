import '../../../../../core/domain/bloc/user_bloc/user_bloc.dart';
import '../../../../../features/my_orders/domain/bloc/my_orders_feature_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_orders_event.dart';
part 'my_orders_state.dart';
part 'my_orders_bloc.freezed.dart';

@injectable
class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  MyOrdersBloc(
    this.userBloc,
    @factoryParam this.myOrdersFeatureBloc,
  ) : super(const _MyOrdersState()) {
    on<_UserStateChanged>(_onUserStateChanged);
    on<_MyOrdersFeatureStateChanged>(_onMyOrdersFeatureStateChanged);

    userBloc.stream.listen(
      (state) => add(MyOrdersEvent.userStateChanged(state)),
    );
    myOrdersFeatureBloc.stream.listen(
      (state) => add(MyOrdersEvent.myOrdersFeatureStateChanged(state)),
    );
  }

  final UserBloc userBloc;
  final MyOrdersFeatureBloc myOrdersFeatureBloc;

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
}
