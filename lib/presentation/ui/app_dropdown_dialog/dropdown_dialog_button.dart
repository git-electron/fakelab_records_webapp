import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class DropdownDialogButton extends StatelessWidget {
  const DropdownDialogButton({
    required this.text,
    required this.onTap,
    this.textColor,
    this.backgroundColor,
    this.isEnabled = true,
    super.key,
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
      ),
    );
  }
}
