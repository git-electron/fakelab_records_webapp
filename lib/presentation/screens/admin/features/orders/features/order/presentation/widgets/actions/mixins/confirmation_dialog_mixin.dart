import '../../../../../../../../../../../core/extensions/num_extensions.dart';
import '../../../../../../../../../../../features/my_orders/domain/models/order/order.dart';
import '../../../../../../../../../../../features/my_orders/domain/models/order/order_status.dart';
import '../../../../../../../../../../ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import 'package:flutter/material.dart';

mixin ConfirmationDialogMixin {
  Order get order;

  Future<bool?> showConfirmationDialog(
    BuildContext context, {
    String? title,
    String? description,
  }) async {
    final bool? isConfirmed = await AppConfirmationDialog.show(
      context,
      title: title ?? _title,
      description: description ?? _description,
    );

    return isConfirmed;
  }

  String get _title {
    return switch (order.status) {
      _ => 'Подтверждение',
    };
  }

  String? get _description {
    return switch (order.status) {
      OrderStatus.REQUEST => _requestDescription,
      OrderStatus.PENDING => _pendingDescription,
      OrderStatus.IN_PROGRESS => _inProgressDescription,
      OrderStatus.AWAITING_CONFIRMATION => _awaitingConfirmationDescription,
      _ => null,
    };
  }

  String get _requestDescription =>
      'Подтвердить заказ? Стоимость фиксированная — ${order.totalCost.formatCurrency()}';
  static const String _pendingDescription =
      'Ты подтверждаешь, что берёшь этот заказ в работу?';
  static const String _inProgressDescription =
      'Ты подтверждаешь, что заказ готов к передаче на проверку заказчику?';
  static const String _awaitingConfirmationDescription =
      'Ты подтверждаешь, что заказчик оплатил заказ и подтвердил готовность?';
}
