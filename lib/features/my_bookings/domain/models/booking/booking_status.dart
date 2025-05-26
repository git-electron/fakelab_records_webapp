import 'package:flutter/material.dart';

import '../../../../../core/gen/colors.gen.dart';

enum BookingStatus {
  REQUEST('Заявка', color: AppColors.request),
  PENDING('Подтверждено', color: AppColors.pending),
  COMPLETED('Завершено', color: AppColors.completed),
  CANCELLED('Отменено', color: AppColors.cancelled);

  const BookingStatus(
    this.title, {
    required this.color,
  });

  final Color color;
  final String title;
}
