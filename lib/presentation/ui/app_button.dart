import '../../core/extensions/color_extensions.dart';
import '../../core/extensions/list_extensions.dart';
import '../../core/gen/assets.gen.dart';
import '../../core/gen/colors.gen.dart';
import '../../core/theme/theme_extensions.dart';
import 'wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.onTap,
    required this.contentColor,
    required this.backgroundColor,
    this.text,
    this.icon,
    this.width,
    this.height = 50,
    this.isEnabled = true,
    this.isLoading = false,
    super.key,
  });

  factory AppButton.primary({
    required VoidCallback onTap,
    String? text,
    SvgGenImage? icon,
    double? width,
    double height = 50,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    return AppButton(
      onTap: onTap,
      text: text,
      icon: icon,
      width: width,
      height: height,
      isEnabled: isEnabled,
      isLoading: isLoading,
      contentColor: AppColors.background,
      backgroundColor: AppColors.onBackground,
    );
  }

  factory AppButton.secondary({
    required VoidCallback onTap,
    String? text,
    SvgGenImage? icon,
    double? width,
    double height = 50,
    bool isEnabled = true,
    bool isLoading = false,
  }) {
    return AppButton(
      onTap: onTap,
      text: text,
      icon: icon,
      width: width,
      height: height,
      isEnabled: isEnabled,
      isLoading: isLoading,
      contentColor: AppColors.onBackground,
      backgroundColor: AppColors.onBackground.copyWithOpacity(.1),
    );
  }

  final VoidCallback onTap;

  final String? text;
  final SvgGenImage? icon;

  final double height;
  final double? width;

  final bool isEnabled;
  final bool isLoading;

  final Color backgroundColor;
  final Color contentColor;

  @override
  Widget build(BuildContext context) {
    final bool canTap = isEnabled && !isLoading;

    return Tappable(
      onTap: canTap ? onTap : null,
      child: Opacity(
        opacity: isEnabled ? 1 : .25,
        child: Container(
          height: height,
          width: width ?? double.infinity,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: backgroundColor,
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 20,
                cornerSmoothing: 0.6,
              ),
            ),
          ),
          child: !isLoading
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (text != null)
                      Text(
                        text!,
                        style: context.styles.body1.copyWith(
                          color: contentColor,
                        ),
                      ),
                    if (icon != null) icon!.svg(),
                  ].alternateWith(const Gap(10)),
                )
              : SizedBox.square(
                  dimension: 20,
                  child: CircularProgressIndicator(
                    color: contentColor,
                    strokeCap: StrokeCap.round,
                    strokeWidth: 3,
                  ),
                ),
        ),
      ),
    );
  }
}
