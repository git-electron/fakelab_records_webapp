part of '../../../home_screen.dart';

class _AboutText extends StatelessWidget {
  const _AboutText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Text(
        text,
        style: context.styles.body2,
      ),
    );
  }
}