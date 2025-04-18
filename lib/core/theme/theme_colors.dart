part of 'theme_extensions.dart';

class _Colors {
  static const Color white = AppColors.white;

  static const Color black = AppColors.black;

  static const Color transparent = Color(0x00000000);

  static const Color background = AppColors.background;

  static const Color onBackground = AppColors.onBackground;

  static const Color card = AppColors.card;

  static const Color title = AppColors.title;

  static const Color subtitle = AppColors.subtitle;

  static const Color body = AppColors.body;

  static const Color footer = AppColors.footer;

  static const Color primary = AppColors.primary;

  static const Color primaryGradientEnd = AppColors.primaryGradientStart;

  static const Color primaryGradientStart = AppColors.primaryGradientEnd;

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [AppColors.primaryGradientStart, AppColors.primaryGradientEnd],
  );

  static const Color awaitingConfirmation = AppColors.awaitingConfirmation;

  static const Color cancelled = AppColors.cancelled;

  static const Color completed = AppColors.completed;

  static const Color inProgress = AppColors.inProgress;

  static const Color pending = AppColors.pending;

  static const Color request = AppColors.request;
}
