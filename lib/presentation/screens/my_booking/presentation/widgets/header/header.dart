part of '../../my_booking_screen.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyBookingBloc, MyBookingState>(
      builder: (context, state) {
        final Booking booking = state.booking!;

        return Padding(
          padding: const Pad(top: 20),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Status(booking.status),
              _Title(booking.title),
              _Id(booking.id),
            ],
          ),
        );
      },
    );
  }
}
