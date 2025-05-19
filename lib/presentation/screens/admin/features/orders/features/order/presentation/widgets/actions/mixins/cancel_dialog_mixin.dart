import '../../../../../../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../../../../../ui/app_text_field_dialog/app_text_field_dialog.dart';
import 'package:flutter/material.dart';

mixin CancelDialogMixin {
  Order get order;

  static const String _title = 'Отменить заказ';
  static const String _hintText = 'Причина отмены';
  static const String _description =
      'Укажи причину отмены заказа. Она отобразится в мини-приложении заказчика';
  static const List<String> _autofillHints = [
    'По желанию заказчика',
    'Не удалось связаться с заказчиком',
  ];

  Future<String?> showCancelDialog(BuildContext context) async {
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
