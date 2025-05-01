import 'package:intl/intl.dart';

extension NumExtensions on num {
  String formatCurrency({
    String symbol = '₽',
    int decimalDigits = 0,
  }) =>
      NumberFormat.currency(
        decimalDigits: decimalDigits,
        symbol: symbol,
        locale: 'ru',
      ).format(this);

  String formatDecimal() => NumberFormat.decimalPattern('ru').format(this);
}
