import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/presentation/ui/logo/logo.dart';
import 'package:fakelab_records_webapp/presentation/ui/user_avatar/user_avatar.dart';
import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 90,
      width: double.infinity,
      child: Padding(
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
    );
  }
}
