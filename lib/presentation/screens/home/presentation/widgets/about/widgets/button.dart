part of '../../../home_screen.dart';

class _AboutButton extends StatelessWidget {
  const _AboutButton();

  @override
  Widget build(BuildContext context) {
    return AppButton.primary(
      onTap: () => launchUrlString(yandexMapsUrl),
      text: 'Как нас найти?',
      icon: Assets.icons.pin.dark,
    );
  }
}