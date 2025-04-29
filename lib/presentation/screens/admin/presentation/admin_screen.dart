import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_bloc/admin_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/presentation/widgets/admin_screen_content.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/presentation/widgets/admin_screen_tab_bar.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => $<AdminBloc>(),
        ),
        BlocProvider(create: (context) => $<AdminOrdersBloc>()),
      ],
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
                  child: AdminScreenBody(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class AdminScreenBody extends StatelessWidget {
  const AdminScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: context.colors.background,
        constraints: const BoxConstraints(maxWidth: 1500),
        padding: const Pad(top: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(20),
            AdminScreenTabBar(),
            Gap(20),
            AdminScreenContent(),
          ],
        ),
      ),
    );
  }
}
