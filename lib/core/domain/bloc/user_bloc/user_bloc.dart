import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/client/user_client.dart';
import '../../../utils/try_or/try_or_null.dart';
import '../../models/result/result.dart';
import '../../models/user/user.dart';
import '../telegram_data_bloc/telegram_data_bloc.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@singleton
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this.userClient, this.telegramDataBloc)
      : super(const _Unauthorized()) {
    on<_SetError>(_onSetError);
    on<_SetLoading>(_onSetLoading);
    on<_SetAuthorized>(_onSetAuthorized);
    on<_SetUnauthorized>(_onSetUnauthorized);

    tryOrNullAsync(_getUser);
    _telegramDataStateSubscription =
        telegramDataBloc.stream.listen(_telegramDataStateListener);
  }

  @override
  Future<void> close() {
    _telegramDataStateSubscription.cancel();
    return super.close();
  }

  final UserClient userClient;
  final TelegramDataBloc telegramDataBloc;

  late final StreamSubscription _telegramDataStateSubscription;

  Future<void> _onSetError(
    _SetError event,
    Emitter<UserState> emit,
  ) async {
    emit(UserState.error(event.message));
  }

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
  }

  Future<void> _onSetAuthorized(
    _SetAuthorized event,
    Emitter<UserState> emit,
  ) async {
    emit(UserState.authorized(event.user));
  }

  Future<void> _onSetUnauthorized(
    _SetUnauthorized event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.unauthorized());
  }

  Future<void> _getUser() async {
    final int userId = telegramDataBloc.state.telegramData!.user.id;
    add(const UserEvent.setLoading());
    final Result<User> result = await userClient.getUser(userId);
    result.when(
      success: (user) => add(UserEvent.setAuthorized(user)),
      error: (message) => add(UserEvent.setError(message)),
    );
  }

  void _telegramDataStateListener(TelegramDataState telegramDataState) {
    if (telegramDataState.isLoaded) _getUser();
  }
}
