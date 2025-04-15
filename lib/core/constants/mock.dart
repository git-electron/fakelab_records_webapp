import 'package:fakelab_records_webapp/core/domain/models/telegram/telegram_user.dart';

class Mock {
  static const _photoFileName = 'QzaYKj8gtRiq3RqEWaoFAjlqDoTTcLn5DvXKCosQsfE';
  static final TelegramUser telegramUser = TelegramUser(
    id: 265685890,
    name: 'Mock',
    username: 'mock_user',
    photoUrl: 'https://t.me/i/userpic/320/$_photoFileName.svg',
  );
}
