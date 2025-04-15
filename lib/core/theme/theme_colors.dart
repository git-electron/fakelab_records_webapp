part of 'theme_extensions.dart';

class _Colors {
  static const Color white = AppColors.white;

  static const Color black = AppColors.black;

  static const Color background = AppColors.background;

  static const Color onBackground = AppColors.onBackground;

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

  static const Color shadowColor = Color(0x40424242);

  // Тени
  static const BoxShadow shadow = BoxShadow(
    color: shadowColor,
    offset: Offset(0, 4),
    blurRadius: 40,
  );
}
