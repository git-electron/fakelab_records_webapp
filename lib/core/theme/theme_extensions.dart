import 'package:fakelab_records_webapp/core/gen/colors.gen.dart';
import 'package:fakelab_records_webapp/core/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme_colors.dart';
part 'theme_styles.dart';

part 'theme_extensions.tailor.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class Colors extends ThemeExtension<Colors> with _$ColorsTailorMixin {
  const Colors({
    required this.white,
    required this.black,
    required this.transparent,
    required this.background,
    required this.onBackground,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.footer,
    required this.primary,
    required this.primaryGradientEnd,
    required this.primaryGradientStart,
    required this.shadowColor,
    required this.primaryGradient,
    required this.shadow,
    required this.statuses,
  });

  @override
  final Color white;

  @override
  final Color black;

  @override
  final Color transparent;

  @override
  final Color background;

  @override
  final Color onBackground;

  @override
  final Color title;

  @override
  final Color subtitle;

  @override
  final Color body;

  @override
  final Color footer;

  @override
  final Color primary;

  @override
  final Color primaryGradientEnd;

  @override
  final Color primaryGradientStart;

  @override
  final Color shadowColor;

  @override
  final LinearGradient primaryGradient;

  @override
  final BoxShadow shadow;

  @override
  final Statuses statuses;
}

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class Statuses extends ThemeExtension<Statuses> with _$StatusesTailorMixin {
  const Statuses({
    required this.awaitingConfirmation,
    required this.cancelled,
    required this.completed,
    required this.inProgress,
    required this.pending,
    required this.request,
  });

  @override
  final Color awaitingConfirmation;

  @override
  final Color cancelled;

  @override
  final Color completed;

  @override
  final Color inProgress;

  @override
  final Color pending;

  @override
  final Color request;
}

const Colors colors = Colors(
  white: _Colors.white,
  black: _Colors.black,
  transparent: _Colors.transparent,
  background: _Colors.background,
  onBackground: _Colors.onBackground,
  title: _Colors.title,
  subtitle: _Colors.subtitle,
  body: _Colors.body,
  footer: _Colors.footer,
  primary: _Colors.primary,
  primaryGradientEnd: _Colors.primaryGradientEnd,
  primaryGradientStart: _Colors.primaryGradientStart,
  shadowColor: _Colors.shadowColor,
  primaryGradient: _Colors.primaryGradient,
  shadow: _Colors.shadow,
  statuses: Statuses(
    awaitingConfirmation: _Colors.awaitingConfirmation,
    cancelled: _Colors.cancelled,
    completed: _Colors.completed,
    inProgress: _Colors.inProgress,
    pending: _Colors.pending,
    request: _Colors.request,
  ),
);

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class Styles extends ThemeExtension<Styles> with _$StylesTailorMixin {
  Styles({
    required this.header,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.footer1,
    required this.footer2,
    required this.footer3,
  });

  @override
  final TextStyle header;

  @override
  final TextStyle title1;
  @override
  final TextStyle title2;
  @override
  final TextStyle title3;

  @override
  final TextStyle subtitle1;
  @override
  final TextStyle subtitle2;
  @override
  final TextStyle subtitle3;

  @override
  final TextStyle body1;
  @override
  final TextStyle body2;
  @override
  final TextStyle body3;

  @override
  final TextStyle footer1;
  @override
  final TextStyle footer2;
  @override
  final TextStyle footer3;
}

final Styles styles = Styles(
  header: _Styles.header,
  title1: _Styles.title1,
  title2: _Styles.title2,
  title3: _Styles.title3,
  subtitle1: _Styles.subtitle1,
  subtitle2: _Styles.subtitle2,
  subtitle3: _Styles.subtitle3,
  body1: _Styles.body1,
  body2: _Styles.body2,
  body3: _Styles.body3,
  footer1: _Styles.footer1,
  footer2: _Styles.footer2,
  footer3: _Styles.footer3,
);
