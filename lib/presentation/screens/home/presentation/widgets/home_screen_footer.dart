import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/constants/constants.dart';
import '../../../../../core/extensions/list_extensions.dart';
import '../../../../../core/gen/assets.gen.dart';
import '../../../../../core/theme/theme_extensions.dart';
import '../../../../ui/wrappers/tappable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreenFooter extends StatelessWidget {
  const HomeScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const Pad(all: 40, bottom: 100),
      color: context.colors.card,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const Pad(vertical: 5),
                  child: Assets.icons.logo.fakelab.full.svg(width: 100),
                ),
                const Gap(40),
                Text(
                  '$businessName, ${DateTime.now().year}',
                  style: context.styles.footer1,
                ),
                Text(businessOwner, style: context.styles.footer1),
                Text('ИНН $businessTIN', style: context.styles.footer1),
                Text(businessAddress, style: context.styles.footer1),
              ].alternateWith(const Gap(8)),
            ),
          ),
          const Gap(30),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Контакты', style: context.styles.body2),
                const Gap(40),
                TappableText(
                  text: 'Telegram',
                  onTap: () => launchUrlString(telegramChannelUrl),
                ),
                TappableText(
                  text: 'VK',
                  onTap: () => launchUrlString(vkPublicUrl),
                ),
                TappableText(
                  text: businessPhoneNumber,
                  onTap: () => launchUrlString('tel:$businessPhoneNumber'),
                ),
                TappableText(
                  text: businessEmailAddress,
                  onTap: () => launchUrlString('mailto:$businessEmailAddress'),
                ),
              ].alternateWith(const Gap(8)),
            ),
          ),
        ],
      ),
    );
  }
}

class TappableText extends StatelessWidget {
  const TappableText({
    required this.text,
    required this.onTap,
    super.key,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Tappable(
        onTap: onTap,
        child: Text(
          text,
          style: context.styles.footer1.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: context.colors.footer,
          ),
        ),
      ),
    );
  }
}
