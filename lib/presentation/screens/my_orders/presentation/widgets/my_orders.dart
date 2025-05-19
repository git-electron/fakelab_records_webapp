part of '../my_orders_screen.dart';

class _MyOrders extends StatelessWidget {
  const _MyOrders();

  @override
  Widget build(BuildContext context) {
    final MyOrdersBloc bloc = context.read();
    final MyOrdersFiltersBloc filtersBloc = context.read();

    return Padding(
      padding: const Pad(horizontal: 20),
      child: MyOrdersFeature.vertical(
        bloc.myOrdersFeatureBloc,
        filtersBloc: filtersBloc,
      ),
    );
  }
}
