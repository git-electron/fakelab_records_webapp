import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/domain/bloc/admin_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/presentation/widgets/admin_order_screen_app_bar.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'widgets/admin_order_screen_info.dart';
import 'widgets/admin_order_screen_services.dart';
import 'widgets/admin_order_screen_status_history.dart';

@RoutePage()
class AdminOrderScreen extends StatelessWidget {
  const AdminOrderScreen({
    @PathParam('id') required this.orderId,
    super.key,
  });

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminOrderBloc>(param1: orderId),
      child: Scaffold(
        body: BlocBuilder<AdminOrderBloc, AdminOrderState>(
          builder: (context, state) {
            if (state.isLoading) return const LoadingPage();
            if (state.hasError) return ErrorPage(message: state.message);

            return CustomScrollView(
              slivers: [
                TelegramMetaWrapper(builder: (context, meta) {
                  if (meta.isMobile) {
                    return const AdminOrderScreenAppBarMobile();
                  }
                  return const SliverToBoxAdapter();
                }),
                const SliverToBoxAdapter(
                  child: AdminOrderScreenBody(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class AdminOrderScreenBody extends StatelessWidget {
  const AdminOrderScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const Pad(top: 20, horizontal: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdminOrderScreenInfo(),
          Gap(10),
          AdminOrderScreenServices(),
          Gap(10),
          AdminOrderScreenStatusHistory(),
          Gap(40),
        ],
      ),
    );
  }
}
