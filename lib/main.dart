import 'dart:async';

import 'core/di/injector.dart';
import 'core/domain/bloc/telegram_data_bloc.dart';
import 'core/router/router.dart';
import 'core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjector();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => $<TelegramDataBloc>()),
      ],
      child: MaterialApp.router(
        theme: AppTheme.primary,
        routerConfig: $<AppRouter>().config(),
        builder: (context, child) => child ?? const SizedBox(),
      ),
    );
  }
}
