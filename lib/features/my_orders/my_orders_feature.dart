import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/bloc/my_orders_feature_bloc.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/utils/scroll_physics/snap_bounce_scroll_physics.dart';
import 'widgets/order_card_small.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyOrdersFeature extends StatelessWidget {
  const MyOrdersFeature.vertical({super.key}) : scrollDirection = Axis.vertical;

  const MyOrdersFeature.horizontal({super.key})
      : scrollDirection = Axis.horizontal;

  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<MyOrdersFeatureBloc>(),
      child: BlocBuilder<MyOrdersFeatureBloc, MyOrdersFeatureState>(
        builder: (context, state) {
          return switch (scrollDirection) {
            Axis.vertical => const Placeholder(),
            Axis.horizontal => MyOrdersHorizontalScroll(state),
          };
        },
      ),
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
          itemCount: orders.length,
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          physics: const SnapBounceScrollPhysics(itemWidth: 210),
          separatorBuilder: (context, index) => const Gap(10),
          itemBuilder: (context, index) => Padding(
            padding: Pad(
              left: index == 0 ? 20 : 0,
              right: index == orders.length - 1 ? 20 : 0,
            ),
            child: OrderCardSmall(orders[index]),
          ),
        ),
      ),
    );
  }
}
