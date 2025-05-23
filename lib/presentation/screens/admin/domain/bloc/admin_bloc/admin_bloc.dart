import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/domain/bloc/telegram_data_bloc/telegram_data_bloc.dart';
import '../../../../../../core/domain/service/telegram_service.dart';
import '../../../../../../core/utils/try_or/try_or_null.dart';
import '../../models/admin_tab.dart';

part 'admin_bloc.freezed.dart';
part 'admin_event.dart';
part 'admin_state.dart';

@injectable
class AdminBloc extends Bloc<AdminEvent, AdminState> {
  AdminBloc(this._telegramService, this._telegramDataBloc)
      : super(const _AdminState()) {
    on<_TabChanged>(_onTabChanged);

    _telegramService.showBackButton();
    tryOrNull(_telegramService.requestFullscreen);
    tryOrNullAsync(_updateTelegramData);
  }

  @override
  Future<void> close() {
    tabsController.dispose();
    _telegramService.hideBackButton();
    if (!_telegramDataBloc.state.isMobile) {
      tryOrNull(_telegramService.exitFullscreen);
      tryOrNullAsync(_updateTelegramData);
    }
    return super.close();
  }

  final TelegramService _telegramService;
  final TelegramDataBloc _telegramDataBloc;

  final ScrollController tabsController = ScrollController();

  Future<void> _onTabChanged(
    _TabChanged event,
    Emitter<AdminState> emit,
  ) async {
    emit(state.copyWith(selectedTab: event.tab));
  }

  Future<void> _updateTelegramData() async {
    _telegramDataBloc.add(TelegramDataEvent.setData(
      _telegramService.getTelegramData()!,
    ));
    await Future.delayed(const Duration(milliseconds: 100));
    tryOrNull(
      () => _telegramDataBloc.add(TelegramDataEvent.setData(
        _telegramService.getTelegramData()!,
      )),
    );
  }
}
