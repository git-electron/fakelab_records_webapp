import 'package:intl/intl.dart';

extension NumExtensions on num {
  String formatCurrency({
    String symbol = '₽',
    int decimalDigits = 0,
  }) =>
      NumberFormat.currency(
        decimalDigits: decimalDigits,
        symbol: symbol,
        customPattern: ',###.0#',
      ).format(this);

  String formatDecimal() => NumberFormat.decimalPattern().format(this);
}
