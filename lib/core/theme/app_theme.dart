import 'theme_extensions.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get primary {
    return ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: colors.primary,
        onPrimary: colors.onBackground,
        secondary: colors.primary,
        onSecondary: colors.onBackground,
        surface: colors.background,
        onSurface: colors.onBackground,
        error: colors.primary,
        onError: colors.onBackground,
      ),
      brightness: Brightness.dark,
      extensions: [colors, styles],
      scaffoldBackgroundColor: colors.background,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colors.onBackground,
      ),
      iconTheme: IconThemeData(color: colors.onBackground),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colors.onBackground,
        unselectedItemColor: colors.background,
      ),
      sliderTheme: SliderThemeData(
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
        trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 2,
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 5),
        overlayColor: colors.primary,
        activeTrackColor: colors.primary,
      ),
    );
  }
}
