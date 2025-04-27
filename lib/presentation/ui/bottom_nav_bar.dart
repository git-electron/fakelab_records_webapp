import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:blur/blur.dart';
import '../../core/extensions/list_extensions.dart';
import '../../core/gen/assets.gen.dart';
import '../../core/theme/theme_extensions.dart';
import 'wrappers/tappable.dart';
import 'wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    required this.activeIndex,
    required this.onTabTap,
    super.key,
  });

  final int activeIndex;
  final void Function(int index) onTabTap;

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        return Padding(
          padding: Pad(bottom: 15 + meta.totalSafeAreaInset.bottom),
          child: Blur(
            blur: 30,
            colorOpacity: .7,
            blurColor: context.colors.background,
            borderRadius: BorderRadius.circular(40),
            overlay: Container(
              height: 80,
              padding: const Pad(all: 5),
              child: Row(
                children: List<Widget>.generate(
                  3,
                  (index) {
                    final bool isActive = activeIndex == index;

                    return Tappable(
                      onTap: () => onTabTap(index),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isActive
                              ? context.colors.onBackground
                              : context.colors.transparent,
                        ),
                        alignment: Alignment.center,
                        child: _icon(index, isActive: isActive)
                            .svg(height: 30, width: 30),
                      ),
                    );
                  },
                ).alternateWith(const Gap(5)),
              ),
            ),
            child: const SizedBox(height: 80, width: 230),
          ),
        );
      },
    );
  }

  SvgGenImage _icon(int index, {required bool isActive}) =>
      isActive ? _activeIcon(index) : _inactiveIcon(index);

  SvgGenImage _activeIcon(int index) => [
        Assets.icons.home.dark,
        Assets.icons.qrCode.dark,
        Assets.icons.box.dark,
      ][index];

  SvgGenImage _inactiveIcon(int index) => [
        Assets.icons.home.light,
        Assets.icons.qrCode.light,
        Assets.icons.box.light,
      ][index];
}
