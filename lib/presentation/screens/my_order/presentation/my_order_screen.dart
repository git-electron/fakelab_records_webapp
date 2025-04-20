import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/domain/bloc/my_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/presentation/widget/my_order_screen_app_bar.dart';
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
            return CustomScrollView(
              slivers: [
                TelegramMetaWrapper(builder: (context, meta) {
                  if (meta.isMobile) return const MyOrderScreenAppBarMobile();
                  return const MyOrderScreenAppBar();
                }),
                const SliverToBoxAdapter(
                  child: MyOrderScreenContent(), //TODO
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
  const MyOrderScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrderBloc, MyOrderState>(
      builder: (context, state) {
        return Container(
          color: context.colors.background,
          padding: const Pad(top: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.order?.type.title ?? '',
                style: context.styles.title1,
              ),
              const Gap(20),
              Container(
                padding: const Pad(horizontal: 15, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: state.order?.status.color,
                ),
                child: Text(
                  state.order?.status.title ?? '',
                  style: context.styles.title3.copyWith(
                    fontSize: 12,
                    color: context.colors.background,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
