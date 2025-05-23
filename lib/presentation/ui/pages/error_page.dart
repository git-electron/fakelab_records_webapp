import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_button.dart';
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
    this.shouldShowBackButton = false,
    this.shouldDisplaySupportText = true,
    super.key,
  });

  final String title;
  final String? message;

  final double? height;
  final bool shouldShowBackButton;
  final bool shouldDisplaySupportText;

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
          _text,
          const Gap(20),
          if (shouldShowBackButton)
            AppButton.primary(
              text: 'Назад',
              onTap: context.pop,
            ),
        ],
      ),
    );
  }

  Widget get _text {
    if (shouldDisplaySupportText) return _textWithSupportText;
    return _textWithoutSupportText;
  }

  Widget get _textWithSupportText {
    return Builder(builder: (context) {
      return Padding(
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
      );
    });
  }

  Widget get _textWithoutSupportText {
    if (!message.isNotNullAndEmpty) return const SizedBox();

    return Builder(builder: (context) {
      return Text(
        message!,
        textAlign: TextAlign.center,
        style: context.styles.body3,
      );
    });
  }
}
