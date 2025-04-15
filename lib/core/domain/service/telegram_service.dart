import 'dart:convert';
import 'dart:js' as js;

import 'package:fakelab_records_webapp/core/constants/types.dart';
import 'package:fakelab_records_webapp/core/domain/models/telegram_data.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class TelegramService {
  TelegramService();

  TelegramData? getTelegramData() {
    final Json? dataJson = _initTelegramWebApp();
    _setupTelegramWebApp();
    return tryOrNull(() => TelegramData.fromJson(dataJson!));
  }

  Json? _initTelegramWebApp() {
    if (kDebugMode) return TelegramData.debugData;

    final result = js.context.callMethod('initTelegramWebApp');
    if (result != null) {
      String jsonString = js.context['JSON'].callMethod('stringify', [result]);
      return jsonDecode(jsonString);
    }
    return null;
  }

  void _setupTelegramWebApp() {
    js.context.callMethod('setupTelegramWebApp');
  }
}
