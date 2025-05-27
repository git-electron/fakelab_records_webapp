part of '../admin_order_screen.dart';

class _Services extends StatelessWidget {
  const _Services();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminOrderBloc, AdminOrderState>(
      builder: (context, state) {
        final Order order = state.order!;
        return CheckoutFeature.order(
          order,
          hint: _hint(order),
          prepaymentPercent: _prepaymentPercent(order),
        );
      },
    );
  }

  CheckoutHint? _hint(Order order) {
    if (!order.costFrom || order.isCancelled) return null;
    return CheckoutHint.costFromAdmin;
  }

  double? _prepaymentPercent(Order order) {
    if (!order.isRequest) return null;
    return kPrepaymentPercent;
  }
}
