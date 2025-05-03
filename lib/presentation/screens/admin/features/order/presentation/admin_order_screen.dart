import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/domain/bloc/admin_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/presentation/widgets/admin_order_screen_actions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/presentation/widgets/admin_order_screen_app_bar.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/order/presentation/widgets/admin_order_screen_customer_info.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'widgets/admin_order_screen_assignee_info.dart';
import 'widgets/admin_order_screen_info.dart';
import 'widgets/admin_order_screen_services.dart';
import 'widgets/admin_order_screen_status_history.dart';

@RoutePage()
class AdminOrderScreen extends StatelessWidget {
  const AdminOrderScreen({
    @PathParam('id') required this.orderId,
    required this.adminStaffBloc,
    required this.adminOrdersBloc,
    super.key,
  });

  final String orderId;
  final AdminStaffBloc adminStaffBloc;
  final AdminOrdersBloc adminOrdersBloc;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => $<AdminOrderBloc>(
            param1: orderId,
            param2: adminOrdersBloc,
          ),
        ),
        BlocProvider.value(value: adminStaffBloc),
      ],
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
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: context.colors.background,
        constraints: const BoxConstraints(maxWidth: 1500),
        padding: const Pad(top: 20, horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AdminOrderScreenInfo(),
            Gap(10),
            AdminOrderScreenCustomerInfo(),
            AdminOrderScreenAssigneeInfo(),
            Gap(10),
            AdminOrderScreenServices(),
            Gap(10),
            AdminOrderScreenActions(),
            Gap(10),
            AdminOrderScreenStatusHistory(),
            Gap(40),
          ],
        ),
      ),
    );
  }
}
