import '../../../../core/domain/bloc/telegram_data_bloc/telegram_data_bloc.dart';
import '../../../../core/domain/models/telegram/telegram_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TelegramUserWrapper extends StatelessWidget {
  const TelegramUserWrapper({required this.builder, super.key});

  final Widget Function(BuildContext context, TelegramUser user) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TelegramDataBloc, TelegramDataState>(
      builder: (context, state) {
        if (state.isSupported) {
          return builder(context, state.telegramData!.user);
        }

        return const SizedBox();
      },
    );
  }
}
