import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import '../../core/router/router.gr.dart';
import '../../core/theme/theme_extensions.dart';
import 'domain/bloc/my_orders_feature_bloc.dart';
import 'domain/models/order/order.dart';
import 'widgets/order_card.dart';
import '../../presentation/ui/pages/empty_page.dart';
import '../../presentation/ui/wrappers/tappable.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/utils/scroll_physics/snap_bounce_scroll_physics.dart';
import 'widgets/order_card_small.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyOrdersFeature extends StatelessWidget {
  const MyOrdersFeature.vertical(this.bloc, {super.key})
      : scrollDirection = Axis.vertical;

  const MyOrdersFeature.horizontal(this.bloc, {super.key})
      : scrollDirection = Axis.horizontal;

  final MyOrdersFeatureBloc bloc;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<MyOrdersFeatureBloc, MyOrdersFeatureState>(
        builder: (context, state) {
          return switch (scrollDirection) {
            Axis.vertical => MyOrdersVerticalScroll(state),
            Axis.horizontal => MyOrdersHorizontalScroll(state),
          };
        },
      ),
    );
  }
}

class MyOrdersVerticalScroll extends StatelessWidget {
  const MyOrdersVerticalScroll(this.state, {super.key});

  final MyOrdersFeatureState state;

  @override
  Widget build(BuildContext context) {
    if (!state.hasOrders) return const EmptyPage(isExpanded: false);

    final List<Order> orders = state.orders!;

    return ListView.separated(
      itemCount: orders.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const Gap(10),
      itemBuilder: (context, index) => OrderCard(orders[index]),
    );
  }
}

class MyOrdersHorizontalScroll extends StatelessWidget {
  const MyOrdersHorizontalScroll(this.state, {super.key});

  final MyOrdersFeatureState state;

  @override
  Widget build(BuildContext context) {
    if (!state.hasOrders) return const SizedBox();

    final List<Order> orders = state.orders!;

    return Padding(
      padding: const Pad(bottom: 20),
      child: SizedBox(
        height: 120,
        child: ListView.separated(
          itemCount: orders.length + 1,
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          physics: const SnapBounceScrollPhysics(itemWidth: 210),
          separatorBuilder: (context, index) => const Gap(10),
          itemBuilder: (context, index) => Padding(
            padding: Pad(
              left: index == 0 ? 20 : 0,
              right: index == orders.length ? 20 : 0,
            ),
            child: index == orders.length
                ? const AllOrdersButton()
                : OrderCardSmall(orders[index]),
          ),
        ),
      ),
    );
  }
}

class AllOrdersButton extends StatelessWidget {
  const AllOrdersButton({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);

    return Tappable(
      onTap: () => tabsRouter.navigate(const MyOrdersRoute()),
      child: Container(
        height: 120,
        padding: const Pad(all: 15),
        decoration: ShapeDecoration(
          color: context.colors.onBackground,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 20,
              cornerSmoothing: 0.6,
            ),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          'Все\nзаказы',
          style: context.styles.footer1.copyWith(
            color: context.colors.background,
          ),
        ),
      ),
    );
  }
}
