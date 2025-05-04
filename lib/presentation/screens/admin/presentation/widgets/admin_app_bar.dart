import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/presentation/widgets/admin_screen_tab_bar.dart';
import 'package:fakelab_records_webapp/presentation/ui/logo/logo.dart';

import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdminAppBarMobile extends StatelessWidget {
  const AdminAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        final double toolbarHeight = meta.totalSafeAreaInset.top + 60;

        return Container(
          height: toolbarHeight,
          width: double.maxFinite,
          alignment: Alignment.bottomCenter,
          child: Blur(
            blur: 10,
            blurColor: context.colors.background,
            alignment: Alignment.bottomCenter,
            overlay: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  height: meta.contentSafeAreaInset.top,
                  child: const Logo(
                    height: 15,
                    type: LogoType.recordsAdmin,
                  ),
                ),
                const AdminScreenTabBar(),
              ],
            ),
            child: const SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
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
        final double toolbarHeight = meta.totalSafeAreaInset.top + 70;

        return SizedBox(
          height: toolbarHeight,
          width: double.maxFinite,
          child: Blur(
            blur: 30,
            blurColor: context.colors.background,
            alignment: Alignment.topCenter,
            overlay: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: meta.totalSafeAreaInset.top,
                  padding: Pad(left: meta.totalSafeAreaInset.top + 10),
                  alignment: Alignment.centerLeft,
                  child: Logo(
                    type: LogoType.recordsAdmin,
                    height: meta.totalSafeAreaInset.top * .4,
                  ),
                ),
                const Gap(10),
                const AdminScreenTabBar(),
              ],
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
