part of '../../../../../book_recording_time_screen.dart';

class _CostPerHour extends StatelessWidget {
  const _CostPerHour();

  @override
  Widget build(BuildContext context) {
    return Text(
      kBookingCostPerHour.formatCurrency(symbol: '₽/час'),
      textAlign: TextAlign.end,
      style: context.styles.title1.copyWith(fontSize: 14),
    );
  }
}
