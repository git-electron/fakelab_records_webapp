part of '../../../home_screen.dart';

class _AdminPanelDisclaimer extends StatelessWidget {
  const _AdminPanelDisclaimer();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Для избежания перерасхода трафика, используй эту функцию только по необходимости',
      style: context.styles.body2,
    );
  }
}
