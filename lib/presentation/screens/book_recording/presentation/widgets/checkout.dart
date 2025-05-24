part of '../book_recording_screen.dart';

class _Checkout extends StatelessWidget {
  const _Checkout();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingBloc, BookRecordingState>(
      builder: (context, state) {
        return CheckoutFeature.singleItem(
          state.checkoutItem,
          hint: CheckoutHint.prepayment,
          prepaymentPercent: .25,
        );
      },
    );
  }
}
