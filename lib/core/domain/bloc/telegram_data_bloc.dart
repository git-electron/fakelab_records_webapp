import 'package:fakelab_records_webapp/core/domain/models/telegram/telegram_data.dart';
import 'package:fakelab_records_webapp/core/domain/service/telegram_service.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'telegram_data_event.dart';
part 'telegram_data_state.dart';
part 'telegram_data_bloc.freezed.dart';

@singleton
class TelegramDataBloc extends Bloc<TelegramDataEvent, TelegramDataState> {
  TelegramDataBloc(this.telegramService) : super(const _Initial()) {
    on<_SetData>(_onSetData);

    tryOrNull(() => add(TelegramDataEvent.setData(
          telegramService.getTelegramData()!,
        )));
  }

  final TelegramService telegramService;

  Future<void> _onSetData(
    _SetData event,
    Emitter<TelegramDataState> emit,
  ) async =>
      emit(TelegramDataState.loaded(event.data));
}
