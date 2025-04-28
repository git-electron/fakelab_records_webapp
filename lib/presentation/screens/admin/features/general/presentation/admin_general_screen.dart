import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/general/presentation/widgets/admin_general_screen_stats.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdminGeneralScreen extends StatelessWidget {
  const AdminGeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(20),
        StatsHeader(),
        Gap(20),
        AdminGeneralScreenStats(),
      ],
    );
  }
}

class StatsHeader extends StatelessWidget {
  const StatsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const Pad(horizontal: 20),
      child: Text(
        'Статистика',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}
