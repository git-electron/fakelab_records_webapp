import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class DatePickerButton extends StatelessWidget {
  const DatePickerButton({
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
    return Tappable(
      onTap: onTap,
      child: Container(
        padding: const Pad(vertical: 4, horizontal: 10),
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
          style: context.styles.body2.copyWith(
            color: textColor ?? context.colors.background,
          ),
        ),
      ),
    );
  }
}
