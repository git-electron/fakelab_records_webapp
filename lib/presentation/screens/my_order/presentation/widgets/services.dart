part of '../my_order_screen.dart';

class _Services extends StatelessWidget {
  const _Services();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrderBloc, MyOrderState>(
      builder: (context, state) {
        final Order order = state.order!;
        return CheckoutFeature.order(order, hint: _hint(order));
      },
    );
  }

  CheckoutHint? _hint(Order order) {
    if (!order.costFrom) return null;
    return CheckoutHint.costFrom;
  }
}
