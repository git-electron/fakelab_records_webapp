part of '../../my_order_screen.dart';

class _Assignee extends StatelessWidget {
  const _Assignee();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrderBloc, MyOrderState>(
      builder: (context, state) {
        final Order order = state.order!;

        if (order.assignee == null) return const SizedBox();

        final StaffMember assignee = order.assignee!;

        return Container(
          width: double.maxFinite,
          margin: const Pad(top: 10),
          padding: const Pad(all: 20),
          decoration: ShapeDecoration(
            color: context.colors.card,
            shape: BorderRadius.circular(20).smoothShape(),
          ),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Исполнитель', style: context.styles.body1),
              _Profile(assignee),
              _Activities(assignee),
            ],
          ),
        );
      },
    );
  }
}
