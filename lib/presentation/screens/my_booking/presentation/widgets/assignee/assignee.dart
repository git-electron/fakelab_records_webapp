part of '../../my_booking_screen.dart';

class _Assignee extends StatelessWidget {
  const _Assignee();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyBookingBloc, MyBookingState>(
      builder: (context, state) {
        final Booking booking = state.booking!;

        if (booking.assignee == null) return const SizedBox();

        final StaffMember assignee = booking.assignee!;

        return Container(
          width: double.infinity,
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
