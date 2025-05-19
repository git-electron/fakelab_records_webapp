part of '../../admin_order_screen.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(builder: (context, meta) {
      return BlocBuilder<AdminOrderBloc, AdminOrderState>(
        builder: (context, state) {
          final Order order = state.order!;

          return Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Status(order),
              _Title(order.type.title),
              _Id(order.id),
            ],
          );
        },
      );
    });
  }
}
