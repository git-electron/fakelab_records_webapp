part of '../../admin_order_screen.dart';

class _Services extends StatelessWidget {
  const _Services();

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
              Text('Что в заказе', style: context.styles.body1),
              const Gap(10),
              ...order.services.map(_Info.service),
              _Info.total(order),
              _CostWarning(order),
            ],
          ),
        );
      },
    );
  }
}
