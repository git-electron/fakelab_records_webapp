import 'package:fakelab_records_webapp/features/my_orders/domain/models/order/order.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:flutter/material.dart';

mixin PendingDialogsMixin {
  Order get order;

  Future<bool?> showConfirmationDialog(BuildContext context) async {
    final bool? isConfirmed = await AppConfirmationDialog.show(
      context,
      title: 'Подтверждение',
      description: 'Взять этот заказ в работу?',
    );

    return isConfirmed;
  }
}
