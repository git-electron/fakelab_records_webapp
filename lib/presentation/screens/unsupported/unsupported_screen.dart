import 'package:auto_route/auto_route.dart';
import '../../ui/pages/error_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UnsupportedScreen extends StatelessWidget {
  const UnsupportedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ErrorPage(
        title: _title,
        message: _message,
      ),
    );
  }

  static const String _title = 'Ой, это устройство не поддерживается';

  static const String _message =
      'Возможно ты пытаешься зайти сюда не через мини-приложение в Telegram';
}
