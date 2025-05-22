part of '../admin_order_screen.dart';

class _StatusHistory extends StatelessWidget {
  const _StatusHistory();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminOrderBloc, AdminOrderState>(
      builder: (context, state) {
        final Order order = state.order!;
        return StatusHistoryFeature.order(order: order);
      },
    );
  }
}
