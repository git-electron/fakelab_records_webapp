import 'dart:convert';
import 'dart:js' as js;

import 'package:fakelab_records_webapp/core/constants/typedefs.dart';
import 'package:fakelab_records_webapp/core/domain/models/telegram_data.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@singleton
class TelegramService {
  TelegramService({required this.logger});

  final Logger logger;

  TelegramData? _data;
  TelegramData? get data {
    if (_data != null) return _data;

    final Json? dataJson = initTelegramWebApp();
    if (dataJson == null || dataJson.isEmpty) return null;

    final TelegramData telegramData = TelegramData.fromJson(dataJson);
    _data = telegramData;

    return _data;
  }

  Json? initTelegramWebApp() {
    if (kDebugMode) return TelegramData.debugData;

    final result = js.context.callMethod('initTelegramWebApp');
    if (result != null) {
      String jsonString = js.context['JSON'].callMethod('stringify', [result]);
      return jsonDecode(jsonString);
    }

    return null;
  }

  // Function to send data back to Telegram
  void sendTelegramData(String data) {
    js.context.callMethod('sendTelegramData', [data]);
  }

  // Function to control the MainButton in Telegram
  void setMainButton(String text, bool isVisible) {
    js.context.callMethod('setMainButton', [text, isVisible]);
  }
}
