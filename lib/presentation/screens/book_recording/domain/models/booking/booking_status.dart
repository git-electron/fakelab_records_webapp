import 'package:fakelab_records_webapp/core/gen/colors.gen.dart';
import 'package:flutter/material.dart';

enum BookingStatus {
  REQUEST('Заявка', color: AppColors.request),
  PENDING('Ожидание', color: AppColors.pending),
  COMPLETED('Завершено', color: AppColors.completed),
  CANCELLED('Отменено', color: AppColors.cancelled);

  const BookingStatus(
    this.title, {
    required this.color,
  });

  final Color color;
  final String title;
}
