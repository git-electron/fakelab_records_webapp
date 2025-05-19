import '../../../../../../../../../../../core/extensions/num_extensions.dart';
import '../../../../../../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../../../../../../core/formatters/currency_input_formatter.dart';
import '../../../../../../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../../../../../ui/app_text_field_dialog/app_text_field_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin ChangeTotalCostDialogMixin {
  Order get order;

  static const String _title = 'Изменить стоимость';
  static const String _hintText = 'Стоимость';
  static const String _description =
      'Укажи итоговую стоимость, на которую вы договорились с заказчиком';
  List<String> get _autofillHints => [1, 1.5, 2]
      .map((x) => (order.type.totalCost * x).formatCurrency())
      .toList();

  Future<double?> showChangeTotalCostDialog(BuildContext context) async {
    final String? totalCost = await AppTextFieldDialog.show(
      context,
      title: _title,
      hintText: _hintText,
      description: _description,
      autofillHints: _autofillHints,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CurrencyTextInputFormatter(),
      ],
    );

    return double.tryParse(totalCost?.extractNumerals() ?? '');
  }
}
