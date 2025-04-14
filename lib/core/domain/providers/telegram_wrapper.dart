import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/domain/models/telegram_data.dart';
import 'package:fakelab_records_webapp/core/service/telegram_service.dart';
import 'package:flutter/material.dart';

class TelegramDataProvider extends StatelessWidget {
  const TelegramDataProvider({
    required this.builder,
    super.key,
  });

  final Widget Function(
    BuildContext context,
    TelegramData data,
  ) builder;

  @override
  Widget build(BuildContext context) {
    final TelegramData? data = $<TelegramService>().data;

    return Builder(
      builder: (context) {
        if (data == null) return const Text('exc', style: TextStyle(color: Colors.white),);

        return builder(context, data);
      },
    );
  }
}
