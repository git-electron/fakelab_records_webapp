import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

import 'core/di/injector.dart';
import 'core/domain/bloc/telegram_data_bloc/telegram_data_bloc.dart';
import 'core/domain/bloc/user_bloc/user_bloc.dart';
import 'core/router/router.dart';
import 'core/theme/app_theme.dart';
import 'firebase_options.dart';

const bool isDevelopment = kDebugMode && false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initInjector();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => $<UserBloc>()),
        BlocProvider(create: (_) => $<TelegramDataBloc>()),
      ],
      child: MaterialApp.router(
        theme: AppTheme.primary,
        localizationsDelegates: const [
          SfGlobalLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: const [Locale('ru')],
        locale: const Locale('ru'),
        routerConfig: $<AppRouter>().config(),
        builder: (context, child) => child ?? const SizedBox(),
      ),
    );
  }
}
