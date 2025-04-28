import 'package:fakelab_records_webapp/core/domain/bloc/telegram_data_bloc/telegram_data_bloc.dart';
import 'package:fakelab_records_webapp/core/domain/service/telegram_service.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/models/admin_tab.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'admin_event.dart';
part 'admin_state.dart';
part 'admin_bloc.freezed.dart';

@injectable
class AdminBloc extends Bloc<AdminEvent, AdminState> {
  AdminBloc(this.telegramService, this.telegramDataBloc)
      : super(const _AdminState()) {
    on<_TabChanged>(_onTabChanged);

    telegramService.showBackButton();
    tryOrNull(telegramService.requestFullscreen);
    tryOrNullAsync(_updateTelegramData);
  }

  @override
  Future<void> close() {
    telegramService.hideBackButton();
    if (!telegramDataBloc.state.isMobile) {
      tryOrNull(telegramService.exitFullscreen);
      tryOrNullAsync(_updateTelegramData);
    }
    return super.close();
  }

  final TelegramService telegramService;
  final TelegramDataBloc telegramDataBloc;

  Future<void> _onTabChanged(
    _TabChanged event,
    Emitter<AdminState> emit,
  ) async {
    emit(state.copyWith(selectedTab: event.tab));
  }

  Future<void> _updateTelegramData() async {
    telegramDataBloc.add(TelegramDataEvent.setData(
      telegramService.getTelegramData()!,
    ));
    await Future.delayed(const Duration(milliseconds: 100));
    tryOrNull(
      () => telegramDataBloc.add(TelegramDataEvent.setData(
        telegramService.getTelegramData()!,
      )),
    );
  }
}
