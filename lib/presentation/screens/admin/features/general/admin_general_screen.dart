import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/general/widgets/admin_general_stats.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/general/widgets/orders/admin_general_orders.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdminGeneralScreen extends StatelessWidget {
  const AdminGeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GeneralHeader('Статистика'),
        Gap(20),
        AdminGeneralStats(),
        Gap(40),
        GeneralHeader('Заказы'),
        Gap(20),
        AdminGeneralOrders(),
        Gap(100),
      ],
    );
  }
}

class GeneralHeader extends StatelessWidget {
  const GeneralHeader(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const Pad(horizontal: 20),
      child: Text(
        title,
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}
