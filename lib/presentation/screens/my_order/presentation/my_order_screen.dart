import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/domain/bloc/my_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/presentation/widgets/my_order_screen_app_bar.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/presentation/widgets/my_order_screen_info.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/error_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/loading_page.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage()
class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({
    @PathParam('id') required this.orderId,
    super.key,
  });

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<MyOrderBloc>(param1: orderId),
      child: Scaffold(
        body: BlocBuilder<MyOrderBloc, MyOrderState>(
          builder: (context, state) {
            if (state.isLoading) return const LoadingPage();
            if (state.hasError) return ErrorPage(state.message);

            return CustomScrollView(
              slivers: [
                TelegramMetaWrapper(builder: (context, meta) {
                  if (meta.isMobile) return const MyOrderScreenAppBarMobile();
                  return const SliverToBoxAdapter();
                }),
                SliverToBoxAdapter(
                  child: MyOrderScreenContent(state.order!),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MyOrderScreenContent extends StatelessWidget {
  const MyOrderScreenContent(this.order, {super.key});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const Pad(top: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyOrderScreenInfo(),
          Text(
            order.type.title,
            style: context.styles.title2.copyWith(height: .85),
          ),
          const Gap(20),
          Container(
            padding: const Pad(horizontal: 15, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: order.status.color,
            ),
            child: Text(
              order.status.title,
              style: context.styles.title3.copyWith(
                fontSize: 12,
                color: context.colors.background,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
