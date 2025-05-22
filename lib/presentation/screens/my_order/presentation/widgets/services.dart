part of '../my_order_screen.dart';

class _Services extends StatelessWidget {
  const _Services();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrderBloc, MyOrderState>(
      builder: (context, state) {
        final Order order = state.order!;

        return CheckoutFeature.order(
          order,
          hints: [if (order.costFrom) CheckoutHint.costFrom],
        );
      },
    );
  }
}
