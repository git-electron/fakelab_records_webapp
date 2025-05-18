part of '../../../../../admin_clients_screen.dart';

class _ContactItem extends StatelessWidget {
  const _ContactItem({
    required this.text,
    required this.icon,
    this.isEnabled = true,
    this.shouldDisplayCallButton = false,
  });

  final String text;
  final SvgGenImage icon;

  final bool isEnabled;
  final bool shouldDisplayCallButton;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Padding(
      padding: Pad(
        top: isMobile ? 5 : 0,
        right: isMobile ? 0 : 20,
      ),
      child: Row(
        spacing: 5,
        children: [
          Tappable(
            onTap: isEnabled ? _onTap : null,
            child: Row(
              spacing: 5,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                icon.svg(
                  height: isMobile ? 15 : 20,
                  width: isMobile ? 15 : 20,
                ),
                Text(text, style: context.styles.footer1),
              ],
            ),
          ),
          const Gap(5),
          _Button.copy(text),
          if (shouldDisplayCallButton) _Button.call(text),
        ],
      ),
    );
  }

  void _onTap() => launchUrlString('https://t.me/$text');
}
