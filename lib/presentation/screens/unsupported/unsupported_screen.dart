import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UnsupportedScreen extends StatelessWidget {
  const UnsupportedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ErrorPage(
        title: 'Ой, это устройство не поддерживается',
        message:
            'Возможно ты пытаешься зайти сюда не через мини-приложение в Telegram',
      ),
    );
  }
}
