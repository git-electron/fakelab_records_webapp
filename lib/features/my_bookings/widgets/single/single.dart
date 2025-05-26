part of '../../my_bookings_feature.dart';

class _Single extends StatelessWidget {
  const _Single(this.state);

  final MyBookingsFeatureState state;

  @override
  Widget build(BuildContext context) {
    if (!state.hasBookings) return const SizedBox();

    final Booking booking = state.booking!;

    return Padding(
      padding: const Pad(horizontal: 20, bottom: 10),
      child: _BookingCardSmall(booking),
    );
  }
}
