import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../core/constants/constants.dart';
import '../../../core/extensions/string_extensions.dart';
import '../../../core/theme/theme_extensions.dart';
import '../wrappers/tappable.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    this.title = 'Ой, произошла ошибка',
    this.message,
    this.height,
    super.key,
  });

  final String title;
  final String? message;
  
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? double.maxFinite,
      width: double.maxFinite,
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
            title,
            textAlign: TextAlign.center,
            style: context.styles.title3.copyWith(fontSize: 20),
          ),
          const Gap(20),
          Padding(
            padding: const Pad(horizontal: 20),
            child: Text.rich(
              TextSpan(
                children: [
                  if (message.isNotNullAndEmpty)
                    TextSpan(
                      text: '$message. ',
                    ),
                  const TextSpan(
                    text: 'Попробуй ещё раз или ',
                  ),
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
    );
  }
}
