part of '../../../book_recording_time_screen.dart';

class _Checkout extends StatelessWidget {
  const _Checkout();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingTimeBloc, BookRecordingTimeState>(
      builder: (context, state) => CheckoutFeature(
        items: state.checkoutItems,
        hints: const [
          CheckoutHint.prepayment,
          CheckoutHint.prepaymentRefund,
        ],
      ),
    );
  }
}
