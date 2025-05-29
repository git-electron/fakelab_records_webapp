part of '../my_booking_screen.dart';

class _Checkout extends StatelessWidget {
  const _Checkout();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyBookingBloc, MyBookingState>(
      builder: (context, state) {
        final Booking booking = state.booking!;
        return CheckoutFeature.booking(
          booking,
          hint: _hint(booking),
          prepaymentPercent: _prepaymentPercent(booking),
        );
      },
    );
  }

  CheckoutHint? _hint(Booking booking) {
    if (!booking.isRequest) return null;
    return CheckoutHint.prepayment;
  }

  double? _prepaymentPercent(Booking booking) {
    if (!booking.isRequest) return null;
    return kPrepaymentPercent;
  }
}
