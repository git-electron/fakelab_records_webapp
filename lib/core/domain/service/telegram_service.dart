import 'dart:convert';
import 'dart:js' as js;

import '../../constants/mock.dart';
import '../../constants/types.dart';
import '../models/telegram/safe_area_inset.dart';
import '../models/telegram/telegram_data.dart';
import '../models/telegram/telegram_meta.dart';
import '../../utils/try_or/try_or_null.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../models/telegram/telegram_user.dart';

@injectable
class TelegramService {
  TelegramService() {
    initTelegramWebApp();
  }

  static bool _isSetup = false;

  void initTelegramWebApp() => _call('initTelegramWebApp');

  TelegramData? getTelegramData() {
    final TelegramUser? user = tryOrNull(getUserData);
    final TelegramMeta? meta = tryOrNull(getMeta);

    final TelegramData? data = tryOrNull(
      () => TelegramData(user: user!, meta: meta!),
    );

    if (!_isSetup) {
      tryOrNull(() {
        _setupTelegramWebApp(data!.meta.isMobile);
        _isSetup = true;
      });
    }
    return data;
  }

  TelegramUser? getUserData() {
    if (kDebugMode) return Mock.telegramUser;

    final Json userJson = _jsDecode(_call('getUserData'));
    return tryOrNull(() => TelegramUser.fromJson(userJson));
  }

  TelegramMeta? getMeta() {
    if (kDebugMode) return Mock.telegramMeta;

    final String? platform = _call('getPlatform');
    final Json inset = _jsDecode(_call('getSafeAreaInset'));
    final Json contentInset = _jsDecode(_call('getContentSafeAreaInset'));

    return tryOrNull(() => TelegramMeta(
          platform: platform!,
          safeAreaInset: SafeAreaInset.fromJson(inset),
          contentSafeAreaInset: SafeAreaInset.fromJson(contentInset),
        ));
  }

  void addBackButtonEvent(VoidCallback onTap) =>
      _call('addBackButtonEvent', [onTap]);

  void showBackButton() => _call('showBackButton');

  void hideBackButton() => _call('hideBackButton');

  void requestFullscreen() => _call('requestFullscreen');

  void exitFullscreen() => _call('exitFullscreen');

  void _setupTelegramWebApp(bool shouldForceFullscreen) =>
      _call('setupTelegramWebApp', [shouldForceFullscreen]);

  dynamic _call(String method, [List<dynamic>? args]) =>
      js.context.callMethod(method, args);

  Json _jsDecode(dynamic value) {
    String jsonString = js.context['JSON'].callMethod('stringify', [value]);
    return jsonDecode(jsonString);
  }
}
