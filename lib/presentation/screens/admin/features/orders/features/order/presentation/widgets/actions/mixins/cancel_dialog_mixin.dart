import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field_dialog/app_text_field_dialog.dart';
import 'package:flutter/material.dart';

mixin CancelDialogMixin {
  Order get order;

  static const String _cancelTitle = 'Отменить заказ';
  static const String _cancelHintText = 'Причина отмены';
  static const String _cancelText =
      'Укажи причину отмены заказа. Она отобразится в мини-приложении заказчика';
  static const List<String> _cancelAutofillHints = [
    'По желанию заказчика',
    'Не удалось связаться с заказчиком',
  ];

  Future<String?> showCancelDialog(BuildContext context) async {
    final String? message = await AppTextFieldDialog.show(
      context,
      title: _cancelTitle,
      description: _cancelText,
      hintText: _cancelHintText,
      autofillHints: _cancelAutofillHints,
    );

    return message;
  }
}
