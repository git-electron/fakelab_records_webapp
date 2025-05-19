import 'package:fakelab_records_webapp/core/extensions/num_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/formatters/currency_input_formatter.dart';
import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field_dialog/app_text_field_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin SetTotalCostDialogMixin {
  Order get order;

  static const String _setTotalCostTitle = 'Принять заказ';
  static const String _setTotalCostHintText = 'Стоимость';
  static const String _setTotalCostDescription =
      'Укажи итоговую стоимость, на которую вы договорились с заказчиком';
  List<String> get _setTotalCostAutofillHints => [1, 1.5, 2]
      .map((x) => (order.type.totalCost * x).formatCurrency())
      .toList();

  Future<double?> showSetTotalCostDialog(BuildContext context) async {
    final String? totalCost = await AppTextFieldDialog.show(
      context,
      title: _setTotalCostTitle,
      hintText: _setTotalCostHintText,
      description: _setTotalCostDescription,
      keyboardType: TextInputType.number,
      autofillHints: _setTotalCostAutofillHints,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CurrencyTextInputFormatter(),
      ],
    );

    return double.tryParse(totalCost?.extractNumerals() ?? '');
  }
}
