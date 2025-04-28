import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'widgets/admin_app_bar.dart';

@RoutePage()
class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => $<AdminBloc>(),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: BlocBuilder<AdminBloc, AdminState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                TelegramMetaWrapper(builder: (context, meta) {
                  if (meta.isMobile) return const AdminAppBarMobile();
                  return const AdminAppBar();
                }),
                const SliverToBoxAdapter(
                  child: AdminScreenContent(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class AdminScreenContent extends StatelessWidget {
  const AdminScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const Pad(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(55),
          Text(
            'Admin panel screen',
            style: context.styles.title3.copyWith(fontSize: 20),
          ),
          const Gap(10),
          Text('In development...', style: context.styles.footer1),
          const Gap(40),
          TelegramMetaWrapper(
            builder: (context, meta) => Padding(
              padding: const Pad(horizontal: 20),
              child: Text(meta.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
