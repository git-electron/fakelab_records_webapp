part of 'telegram_data_bloc.dart';

@freezed
class TelegramDataState with _$TelegramDataState {
  const factory TelegramDataState.unsupported() = _Unsupported;

  const factory TelegramDataState.loaded(TelegramData data) = _Loaded;

  const TelegramDataState._();

  bool get isSupported => maybeWhen(
        loaded: (_) => true,
        orElse: () => false,
      );

  TelegramData? get telegramData => whenOrNull(
        loaded: (telegramData) => telegramData,
      );
}
