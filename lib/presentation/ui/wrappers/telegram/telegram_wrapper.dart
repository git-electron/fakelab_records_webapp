import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/domain/bloc/telegram_data_bloc/telegram_data_bloc.dart';
import '../../../../core/domain/models/telegram/telegram_data.dart';

class TelegramWrapper extends StatelessWidget {
  const TelegramWrapper({required this.builder, super.key});

  final Widget Function(BuildContext context, TelegramData data) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TelegramDataBloc, TelegramDataState>(
      builder: (context, state) {
        if (state.isSupported) {
          return builder(context, state.telegramData!);
        }

        return const SizedBox();
      },
    );
  }
}
