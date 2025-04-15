part of 'telegram_data_bloc.dart';

@freezed
class TelegramDataEvent with _$TelegramDataEvent {
  const factory TelegramDataEvent.setData(TelegramData data) = _SetData;
}
