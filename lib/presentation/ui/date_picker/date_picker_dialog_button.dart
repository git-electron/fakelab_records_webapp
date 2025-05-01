import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class DatePickerDialogButton extends StatelessWidget {
  const DatePickerDialogButton({
    required this.text,
    required this.onTap,
    this.textColor,
    this.backgroundColor,
    super.key,
  });

  final String text;
  final VoidCallback onTap;

  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    return Tappable(
      onTap: onTap,
      child: Container(
        padding: Pad(
          vertical: isMobile ? 5 : 8,
          horizontal: isMobile ? 12 : 20,
        ),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: backgroundColor ?? context.colors.onBackground,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 10,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        child: Text(
          text,
          style:
              (isMobile ? context.styles.body3 : context.styles.body2).copyWith(
            color: textColor ?? context.colors.background,
          ),
        ),
      ),
    );
  }
}
