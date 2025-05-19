import 'package:flutter/material.dart';

import '../../../../../core/gen/colors.gen.dart';

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

  bool get isRequest => this == OrderStatus.REQUEST;
  bool get isPending => this == OrderStatus.PENDING;
  bool get isInProgress => this == OrderStatus.IN_PROGRESS;
  bool get isAwaitingConfirmation => this == OrderStatus.AWAITING_CONFIRMATION;
  bool get isCompleted => this == OrderStatus.COMPLETED;
  bool get isCancelled => this == OrderStatus.CANCELLED;
}
