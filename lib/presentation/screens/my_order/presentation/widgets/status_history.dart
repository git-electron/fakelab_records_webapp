part of '../my_order_screen.dart';

class _StatusHistory extends StatelessWidget {
  const _StatusHistory();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrderBloc, MyOrderState>(
      builder: (context, state) {
        final Order order = state.order!;
        return StatusHistoryFeature.order(order: order);
      },
    );
  }
}
