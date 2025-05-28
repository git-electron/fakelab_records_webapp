part of '../../admin_order_screen.dart';

class _Customer extends StatelessWidget {
  const _Customer();

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(builder: (context, meta) {
      return BlocBuilder<AdminOrderBloc, AdminOrderState>(
        builder: (context, state) {
          final Order order = state.order!;

          return Container(
            width: double.maxFinite,
            decoration: ShapeDecoration(
              color: context.colors.card,
              shape: BorderRadius.circular(20).smoothShape(),
            ),
            padding: const Pad(all: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _CustomerHeader(order.customer),
                _Contacts(order.customer),
              ],
            ),
          );
        },
      );
    });
  }
}
