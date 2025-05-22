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
          hints: [
            if (order.costFrom && !order.isCancelled)
              CheckoutHint.costFromAdmin,
          ],
        );
      },
    );
  }
}
