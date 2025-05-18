part of '../home_screen.dart';

class _MyOrders extends StatelessWidget {
  const _MyOrders();

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = context.read();

    return MyOrdersFeature.horizontal(bloc.myOrdersFeatureBloc);
  }
}
