import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field_dialog/app_text_field_dialog.dart';
import 'package:flutter/material.dart';

mixin AwaitingConfirmationDialogsMixin {
  Order get order;

  static const String _confirmationTitle = 'Подтверждение';
  static const String _confirmationText =
      'Ты подтверждаешь, что заказчик оплатил заказ и подтвердил готовность?';

  Future<bool?> showConfirmationDialog(BuildContext context) async {
    final bool? isConfirmed = await AppConfirmationDialog.show(
      context,
      title: _confirmationTitle,
      description: _confirmationText,
    );

    return isConfirmed;
  }

  static const String _returnToWorkTitle = 'Вернуть в работу';
  static const String _returnToWorkHintText = 'Причина возврата';
  static const List<String> _returnToWorkAutofillHints = [
    'Правки от заказчика',
    'Необходимость доработки',
  ];
  static const String _returnToWorkText =
      'Укажи причину возврата заказа. Она отобразится в мини-приложении заказчика';

  Future<String?> showReturnToWorkDialog(BuildContext context) async {
    final String? message = await AppTextFieldDialog.show(
      context,
      title: _returnToWorkTitle,
      hintText: _returnToWorkHintText,
      autofillHints: _returnToWorkAutofillHints,
      description: _returnToWorkText,
    );

    return message;
  }
}
