import 'dart:async';

import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/domain/bloc/telegram_data_bloc.dart';
import 'package:fakelab_records_webapp/core/router/router.dart';
import 'package:fakelab_records_webapp/core/theme/app_theme.dart';
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
