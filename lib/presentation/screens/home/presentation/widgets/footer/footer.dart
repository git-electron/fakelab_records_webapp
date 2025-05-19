part of '../../home_screen.dart';

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const Pad(all: 40, bottom: 100),
      color: context.colors.card,
      child: Row(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            ),
          ),
          Expanded(
            child: Column(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Контакты', style: context.styles.body2),
                const Gap(40),
                _TappableText(
                  text: 'Telegram',
                  onTap: () => launchUrlString(telegramChannelUrl),
                ),
                _TappableText(
                  text: 'VK',
                  onTap: () => launchUrlString(vkPublicUrl),
                ),
                _TappableText(
                  text: businessPhoneNumber,
                  onTap: () => launchUrlString('tel:$businessPhoneNumber'),
                ),
                _TappableText(
                  text: businessEmailAddress,
                  onTap: () => launchUrlString('mailto:$businessEmailAddress'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
