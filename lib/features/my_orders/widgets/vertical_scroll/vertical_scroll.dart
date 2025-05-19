part of '../../my_orders_feature.dart';

class _VerticalScroll extends StatelessWidget {
  const _VerticalScroll(
    this.state, {
    required this.filtersBloc,
  });

  final MyOrdersFeatureState state;
  final MyOrdersFiltersBloc? filtersBloc;

  @override
  Widget build(BuildContext context) {
    return _NullableFiltersBlocBuilder(
      filtersBloc: filtersBloc,
      builder: (context, filtersState) {
        final List<Order> orders = _getOrders(filtersState);

        if (orders.isEmpty) return const EmptyPage(height: 500);

        return ListView.separated(
          itemCount: orders.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true, //TODO: rewrite to remove this
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => const Gap(10),
          itemBuilder: (context, index) => _OrderCard(orders[index]),
        );
      },
    );
  }

  List<Order> _getOrders(MyOrdersFiltersState? filtersState) {
    if (filtersState != null) return filtersState.filterOrders(state.orders);
    return state.orders ?? [];
  }
}

class _NullableFiltersBlocBuilder extends StatelessWidget {
  const _NullableFiltersBlocBuilder({
    required this.builder,
    required this.filtersBloc,
  });

  final Widget Function(BuildContext, MyOrdersFiltersState?) builder;
  final MyOrdersFiltersBloc? filtersBloc;

  @override
  Widget build(BuildContext context) {
    if (filtersBloc == null) return builder(context, null);

    return BlocBuilder<MyOrdersFiltersBloc, MyOrdersFiltersState>(
      builder: builder,
    );
  }
}
