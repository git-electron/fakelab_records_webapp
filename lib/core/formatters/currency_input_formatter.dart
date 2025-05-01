import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:flutter/services.dart';

class CurrencyTextInputFormatter extends TextInputFormatter {
  CurrencyTextInputFormatter({
    this.symbol = '₽',
    this.decimalDigits = 0,
  });

  final String symbol;
  final int decimalDigits;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    double value = double.parse(newValue.text);

    String newText = value.formatCurrency(
      symbol: symbol,
      decimalDigits: decimalDigits,
    );
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length - 2),
    );
  }
}
