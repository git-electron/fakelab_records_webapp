import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

import '../../core/theme/theme_extensions.dart';
import 'wrappers/tappable.dart';

class AppSwipeButton extends StatelessWidget {
  const AppSwipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: () {},
      child: Container(
        height: 50,
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: context.colors.onBackground,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 20,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Текст',
              style: context.styles.body1.copyWith(
                color: context.colors.background,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
