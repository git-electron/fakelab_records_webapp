import 'dart:convert';
import 'dart:js' as js;

import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/domain/models/telegram/telegram_data.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../models/telegram/telegram_user.dart';

@injectable
class TelegramService {
  TelegramService() {
    initTelegramWebApp();
  }

  void initTelegramWebApp() => js.context.callMethod('initTelegramWebApp');

  TelegramData? getTelegramData() {
    final Json? userJson = tryOrNull(_getUserData);
    final String? platform = tryOrNull(_getPlatform);

    final TelegramData? data = tryOrNull(
      () => TelegramData(
        user: TelegramUser.fromJson(userJson!),
        platform: platform!,
      ),
    );

    tryOrNull(() => _setupTelegramWebApp(false));
    return data;
  }

  Json? _getUserData() {
    if (kDebugMode) return TelegramUser.debugMock;

    final result = js.context.callMethod('getUserData');
    if (result != null) {
      String jsonString = js.context['JSON'].callMethod('stringify', [result]);
      return jsonDecode(jsonString);
    }
    return null;
  }

  String? _getPlatform() {
    final result = js.context.callMethod('getPlatform');
    return result;
  }

  void _setupTelegramWebApp(bool shouldForceFullscreen) {
    js.context.callMethod('setupTelegramWebApp', [shouldForceFullscreen]);
  }
}
