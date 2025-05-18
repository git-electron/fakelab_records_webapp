part of '../../../home_screen.dart';

class _TappableText extends StatelessWidget {
  const _TappableText({
    required this.text,
    required this.onTap,
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
