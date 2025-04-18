import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

@RoutePage()
class UnsupportedScreen extends StatelessWidget {
  const UnsupportedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const Pad(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline_rounded,
              size: 100,
              color: context.colors.footer,
            ),
            const Gap(50),
            Text(
              'Ой, это устройство не поддерживается',
              textAlign: TextAlign.center,
              style: context.styles.title3.copyWith(fontSize: 20),
            ),
            const Gap(20),
            Padding(
              padding: const Pad(horizontal: 20),
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                        text:
                            'Возможно ты пытаешься зайти сюда не через мини-приложение в Telegram. Если ты считаешь, что это не так — '),
                    WidgetSpan(
                      child: Tappable(
                        onTap: () => launchUrlString(telegramSupportUrl),
                        child: Text(
                          'напиши в поддержку',
                          style: context.styles.body3.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                style: context.styles.body3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
