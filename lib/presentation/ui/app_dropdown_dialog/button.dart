part of 'app_dropdown_dialog.dart';

class _Button extends StatelessWidget {
  const _Button({
    required this.text,
    required this.onTap,
    this.textColor,
    this.backgroundColor,
    this.isEnabled = true,
  });

  final String text;
  final bool isEnabled;
  final VoidCallback onTap;

  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Opacity(
      opacity: isEnabled ? 1 : .25,
      child: Tappable(
        onTap: isEnabled ? onTap : null,
        child: Container(
          padding: Pad(
            vertical: isMobile ? 5 : 8,
            horizontal: isMobile ? 12 : 20,
          ),
          decoration: ShapeDecoration(
            color: backgroundColor ?? context.colors.onBackground,
            shape: BorderRadius.circular(10).smoothShape(),
          ),
          child: Text(
            text,
            style: (isMobile ? context.styles.body3 : context.styles.body2)
                .copyWith(
              color: textColor ?? context.colors.background,
            ),
          ),
        ),
      ),
    );
  }
}
