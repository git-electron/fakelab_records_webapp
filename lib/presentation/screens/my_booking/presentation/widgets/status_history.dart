part of '../my_booking_screen.dart';

class _StatusHistory extends StatelessWidget {
  const _StatusHistory();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyBookingBloc, MyBookingState>(
      builder: (context, state) {
        final Booking booking = state.booking!;
        return StatusHistoryFeature.booking(booking: booking);
      },
    );
  }
}
