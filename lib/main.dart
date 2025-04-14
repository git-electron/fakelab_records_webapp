import 'dart:async';

import 'package:fakelab_records_webapp/core/service/telegram_service.dart';
import 'package:flutter/material.dart';

final TelegramService telegramService = TelegramService();

void main() {
  telegramService.getTelegramData();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  double opacity = 1;
  int dotCount = 1;

  startTimer() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      opacity = opacity == 1 ? 0.6 : 1;
      setState(() {});
    });
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      dotCount = dotCount > 2 ? 0 : dotCount;
      dotCount++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff161616),
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
              Text(
                'Разрабатываем${'.' * dotCount}',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'TG data: ${telegramService.telegramData.toString()}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
