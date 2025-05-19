part of '../../my_order_screen.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrderBloc, MyOrderState>(
      builder: (context, state) {
        final Order order = state.order!;

        return Padding(
          padding: const Pad(top: 20),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Status(order.status),
              _Title(order.type.title),
              _Id(order.id),
            ],
          ),
        );
      },
    );
  }
}
