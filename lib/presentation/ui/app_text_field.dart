import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    super.key,
    this.hintText,
    this.onChanged,
    this.prefixIcon,
    this.keyboardType,
    this.inputFormatters,
    this.shouldAutofocus = false,
    TextEditingController? controller,
  }) {
    _controller = controller ?? TextEditingController();
  }

  final String? hintText;
  final bool shouldAutofocus;
  final SvgGenImage? prefixIcon;
  final TextInputType? keyboardType;
  final void Function(String value)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  late final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      padding: const Pad(horizontal: 15),
      decoration: ShapeDecoration(
        color: context.colors.card,
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerSmoothing: 0.6,
            cornerRadius: 15,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (prefixIcon != null) prefixIcon!.svg(),
          if (prefixIcon != null) const Gap(10),
          Expanded(
            child: TextField(
              autofocus: shouldAutofocus,
              cursorWidth: 1.5,
              onChanged: onChanged,
              controller: _controller,
              keyboardType: keyboardType,
              style: context.styles.body2,
              inputFormatters: inputFormatters,
              cursorColor: context.colors.onBackground,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: context.styles.body3.copyWith(
                  color: context.colors.footer,
                ),
              ),
            ),
          ),
          const Gap(10),
          ValueListenableBuilder(
              valueListenable: _controller,
              builder: (context, value, child) {
                return AnimatedSwitcher(
                  duration: kAnimationDuration,
                  child: _controller.text.isNotEmpty
                      ? Tappable(
                          onTap: () {
                            _controller.clear();
                            onChanged?.call('');
                          },
                          child: Assets.icons.cross.light.svg(),
                        )
                      : const SizedBox(),
                );
              }),
        ],
      ),
    );
  }
}
