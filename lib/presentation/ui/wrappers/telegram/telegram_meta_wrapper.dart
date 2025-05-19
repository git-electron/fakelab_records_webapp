import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/domain/bloc/telegram_data_bloc/telegram_data_bloc.dart';
import '../../../../core/domain/models/telegram/telegram_meta.dart';

class TelegramMetaWrapper extends StatelessWidget {
  const TelegramMetaWrapper({required this.builder, super.key});

  final Widget Function(BuildContext context, TelegramMeta meta) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TelegramDataBloc, TelegramDataState>(
      builder: (context, state) {
        if (state.isSupported) {
          return builder(context, state.telegramData!.meta);
        }

        return const SizedBox();
      },
    );
  }
}
