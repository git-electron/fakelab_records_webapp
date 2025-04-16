import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_user_wrapper.dart';
import 'package:flutter/material.dart';

class HomeScreenGreetings extends StatelessWidget {
  const HomeScreenGreetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const Pad(horizontal: 20),
      child: TelegramUserWrapper(builder: (context, user) {
        return Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: 'Привет, '),
              TextSpan(
                text: '${user.firstName}!',
                style: context.styles.subtitle1.copyWith(
                  color: context.colors.white,
                ),
              ),
            ],
          ),
          style: context.styles.subtitle1,
        );
      }),
    );
  }
}
