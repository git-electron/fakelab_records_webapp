import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';

import 'widgets/admin_create_staff_member_screen_app_bar.dart';

@RoutePage()
class AdminCreateStaffMemberScreen extends StatelessWidget {
  const AdminCreateStaffMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          TelegramMetaWrapper(builder: (context, meta) {
            if (meta.isMobile) {
              return const AdminCreateStaffMemberScreenAppBarMobile();
            }
            return const SliverToBoxAdapter();
          }),
          const SliverToBoxAdapter(
            child: AdminCreateStaffMemberScreenBody(),
          ),
        ],
      ),
    );
  }
}

class AdminCreateStaffMemberScreenBody extends StatelessWidget {
  const AdminCreateStaffMemberScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: context.colors.background,
        constraints: const BoxConstraints(maxWidth: 1500),
        padding: const Pad(top: 20, horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
