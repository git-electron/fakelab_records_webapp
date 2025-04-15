import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/logo/logo.dart';
import 'package:fakelab_records_webapp/presentation/ui/user_avatar/user_avatar.dart';
import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Blur(
      blur: 10,
      blurColor: context.colors.background,
      overlay: const Padding(
        padding: Pad(horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Logo(),
            UserAvatar(),
          ],
        ),
      ),
      child: const SizedBox(
        height: 90,
        width: double.infinity,
      ),
    );
  }
}
