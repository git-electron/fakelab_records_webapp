import '../domain/models/telegram/safe_area_inset.dart';
import '../domain/models/telegram/telegram_meta.dart';
import '../domain/models/telegram/telegram_user.dart';

class Mock {
  static const _photoFileName = 'QzaYKj8gtRiq3RqEWaoFAjlqDoTTcLn5DvXKCosQsfE';
  static final TelegramUser telegramUser = TelegramUser(
    id: 265685890,
    name: 'Mock',
    username: 'mock_user',
    photoUrl: 'https://t.me/i/userpic/320/$_photoFileName.svg',
  );

  static final TelegramMeta telegramMeta = TelegramMeta(
    platform: 'unknown',
    safeAreaInset: SafeAreaInset(top: 55, left: 0, right: 0, bottom: 20),
    contentSafeAreaInset: SafeAreaInset(top: 45, left: 0, right: 0, bottom: 0),
  );
}
