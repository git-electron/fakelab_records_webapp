part of '../book_recording_screen.dart';

class _Checkout extends StatelessWidget {
  const _Checkout();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookRecordingBloc, BookRecordingState>(
      builder: (context, state) {
        return Padding(
          padding: const Pad(horizontal: 20),
          child: CheckoutFeature.singleItem(
            state.checkoutItem,
            hint: CheckoutHint.prepayment,
            prepaymentPercent: kPrepaymentPercent,
          ),
        );
      },
    );
  }
}
