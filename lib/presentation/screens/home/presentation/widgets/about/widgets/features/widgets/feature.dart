part of '../../../../../home_screen.dart';

class _AboutFeature extends StatelessWidget {
  const _AboutFeature({
    required this.text,
    required this.icon,
  }) : widget = null;

  const _AboutFeature.widget({
    required this.widget,
    required this.icon,
  }) : text = null;

  final String? text;
  final Widget? widget;
  final SvgGenImage icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon.svg(),
        const Gap(10),
        if (text != null) Text(text!, style: context.styles.body3),
        if (widget != null) widget!,
      ],
    );
  }
}
