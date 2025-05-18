part of '../../../home_screen.dart';

class _ExamplesButton extends StatelessWidget {
  const _ExamplesButton();

  @override
  Widget build(BuildContext context) {
    return AppButton.primary(
      onTap: () {},
      isEnabled: false,
      text: 'Больше примеров',
      icon: Assets.icons.arrowRight.dark,
    );
  }
}
