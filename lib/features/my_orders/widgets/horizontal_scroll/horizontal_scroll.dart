part of '../../my_orders_feature.dart';

class _HorizontalScroll extends StatelessWidget {
  const _HorizontalScroll(this.state);

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
                ? const _AllOrdersButton()
                : _OrderCardSmall(orders[index]),
          ),
        ),
      ),
    );
  }
}
