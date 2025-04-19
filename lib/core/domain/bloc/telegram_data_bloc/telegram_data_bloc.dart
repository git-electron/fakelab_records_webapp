import '../../models/telegram/telegram_data.dart';
import '../../service/telegram_service.dart';
import '../../../utils/try_or/try_or_null.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'telegram_data_event.dart';
part 'telegram_data_state.dart';
part 'telegram_data_bloc.freezed.dart';

@singleton
class TelegramDataBloc extends Bloc<TelegramDataEvent, TelegramDataState> {
  TelegramDataBloc(this.telegramService) : super(const _Unsupported()) {
    on<_SetData>(_onSetData);

    tryOrNull(
      () => add(TelegramDataEvent.setData(
        telegramService.getTelegramData()!,
      )),
    );
  }

  final TelegramService telegramService;

  Future<void> _onSetData(
    _SetData event,
    Emitter<TelegramDataState> emit,
  ) async {
    emit(TelegramDataState.loaded(event.data));
    if (event.data.meta.isMobile &&
        event.data.meta.contentSafeAreaInset.top == 0) {
      await Future.delayed(const Duration());
      tryOrNull(
        () => add(TelegramDataEvent.setData(
          telegramService.getTelegramData()!,
        )),
      );
    }
  }
}
