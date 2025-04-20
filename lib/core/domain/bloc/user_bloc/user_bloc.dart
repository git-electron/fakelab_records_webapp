import 'package:fakelab_records_webapp/core/data/client/user_client.dart';
import 'package:fakelab_records_webapp/core/domain/bloc/telegram_data_bloc/telegram_data_bloc.dart';
import 'package:fakelab_records_webapp/core/domain/models/result/result.dart';
import 'package:fakelab_records_webapp/core/domain/models/user/user.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@singleton
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this.userClient, this.telegramDataBloc)
      : super(const _Unauthorized()) {
    on<_SetError>(_onSetError);
    on<_SetLoading>(_onSetLoading);
    on<_SetAuthorized>(_onSetAuthorized);
    on<_SetUnauthorized>(_onSetUnauthorized);

    tryOrNullAsync(_getUser);
    telegramDataBloc.stream.listen(_onTelegramDataStateEvent);
  }

  final UserClient userClient;
  final TelegramDataBloc telegramDataBloc;

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

  void _onTelegramDataStateEvent(TelegramDataState telegramDataState) {
    if (telegramDataState.isLoaded) _getUser();
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
}
