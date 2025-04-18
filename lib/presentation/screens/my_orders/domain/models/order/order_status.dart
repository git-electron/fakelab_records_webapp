import '../../../../../../core/gen/colors.gen.dart';
import 'package:flutter/material.dart';

enum OrderStatus {
  REQUEST('Заявка', color: AppColors.request),
  PENDING('В очереди', color: AppColors.pending),
  IN_PROGRESS('В работе', color: AppColors.inProgress),
  AWAITING_CONFIRMATION('Проверка', color: AppColors.awaitingConfirmation),
  COMPLETED('Выполнен', color: AppColors.completed),
  CANCELLED('Отменён', color: AppColors.cancelled);

  const OrderStatus(
    this.title, {
    required this.color,
  });

  final Color color;
  final String title;
}
