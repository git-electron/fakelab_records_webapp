part of '../../admin_order_screen.dart';

class _StatusHistory extends StatelessWidget {
  const _StatusHistory();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminOrderBloc, AdminOrderState>(
      builder: (context, state) {
        final Order order = state.order!;

        return Container(
          width: double.infinity,
          decoration: ShapeDecoration(
            color: context.colors.card,
            shape: BorderRadius.circular(20).smoothShape(),
          ),
          padding: const Pad(all: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('История', style: context.styles.body1),
              const Gap(20),
              ..._buildStatusHistory(order),
            ],
          ),
        );
      },
    );
  }

  List<Widget> _buildStatusHistory(Order order) {
    return order.statusHistory.reversed
        .map<Widget>(_Item.info)
        .toList()
        .alternateWith(
          Container(
            width: 50,
            alignment: Alignment.center,
            child: Builder(builder: (context) {
              return Container(
                width: 2,
                height: 10,
                color: context.colors.footer.copyWithOpacity(.25),
              );
            }),
          ),
        );
  }
}
