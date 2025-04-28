import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/logo/logo.dart';

import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';

class AdminAppBarMobile extends StatelessWidget {
  const AdminAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        return SliverAppBar(
          toolbarHeight: meta.totalSafeAreaInset.top,
          automaticallyImplyLeading: false,
          backgroundColor: context.colors.transparent,
          surfaceTintColor: context.colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          pinned: true,
          floating: true,
          forceElevated: false,
          flexibleSpace: LayoutBuilder(
            builder: (context, constraints) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: Blur(
                  blur: 10,
                  blurColor: context.colors.background,
                  alignment: Alignment.bottomCenter,
                  overlay: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    height: meta.contentSafeAreaInset.top,
                    child: const Logo(
                      height: 15,
                      type: LogoType.recordsAdmin,
                    ),
                  ),
                  child: const SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class AdminAppBar extends StatelessWidget {
  const AdminAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        final double toolbarHeight = meta.totalSafeAreaInset.top + 10;

        return SliverAppBar(
          pinned: true,
          toolbarHeight: toolbarHeight,
          automaticallyImplyLeading: false,
          backgroundColor: context.colors.transparent,
          surfaceTintColor: context.colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          forceElevated: false,
          flexibleSpace: Blur(
            blur: 30,
            blurColor: context.colors.background,
            alignment: Alignment.topCenter,
            overlay: Container(
              height: meta.totalSafeAreaInset.top,
              padding: Pad(left: toolbarHeight),
              alignment: Alignment.centerLeft,
              child: Logo(
                type: LogoType.recordsAdmin,
                height: meta.totalSafeAreaInset.top * .4,
              ),
            ),
            child: SizedBox(
              height: toolbarHeight,
              width: double.infinity,
            ),
          ),
        );
      },
    );
  }
}
