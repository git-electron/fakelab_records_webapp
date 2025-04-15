import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram_wrapper.dart';
import 'package:flutter/material.dart';

class HomeScreenGreetings extends StatelessWidget {
  const HomeScreenGreetings({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramWrapper(builder: (context, data) {
      return Text.rich(
        TextSpan(
          children: [
            const TextSpan(text: 'Привет, '),
            TextSpan(
              text: data.firstName,
              style: context.styles.subtitle1.copyWith(
                color: context.colors.white,
              ),
            ),
            const TextSpan(text: '!'),
          ],
        ),
        style: context.styles.subtitle1,
      );
    });
  }
}
