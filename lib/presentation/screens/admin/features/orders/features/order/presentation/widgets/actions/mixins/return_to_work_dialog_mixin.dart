import '../../../../../../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../../../../../ui/app_text_field_dialog/app_text_field_dialog.dart';
import 'package:flutter/material.dart';

mixin ReturnToWorkDialogMixin {
  Order get order;

  static const String _title = 'Вернуть в работу';
  static const String _hintText = 'Причина возврата';
  static const List<String> _autofillHints = [
    'Правки от заказчика',
    'Необходимость доработки',
  ];
  static const String _description =
      'Укажи причину возврата заказа. Она отобразится в мини-приложении заказчика';

  Future<String?> showReturnToWorkDialog(BuildContext context) async {
    final String? message = await AppTextFieldDialog.show(
      context,
      title: _title,
      hintText: _hintText,
      description: _description,
      autofillHints: _autofillHints,
    );

    return message;
  }
}
