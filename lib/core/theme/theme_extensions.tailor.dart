// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_extensions.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$ColorsTailorMixin on ThemeExtension<Colors> {
  Color get white;
  Color get black;
  Color get background;
  Color get onBackground;
  Color get title;
  Color get subtitle;
  Color get body;
  Color get footer;
  Color get primary;
  Color get primaryGradientEnd;
  Color get primaryGradientStart;
  Color get shadowColor;
  LinearGradient get primaryGradient;
  BoxShadow get shadow;
  Statuses get statuses;

  @override
  Colors copyWith({
    Color? white,
    Color? black,
    Color? background,
    Color? onBackground,
    Color? title,
    Color? subtitle,
    Color? body,
    Color? footer,
    Color? primary,
    Color? primaryGradientEnd,
    Color? primaryGradientStart,
    Color? shadowColor,
    LinearGradient? primaryGradient,
    BoxShadow? shadow,
    Statuses? statuses,
  }) {
    return Colors(
      white: white ?? this.white,
      black: black ?? this.black,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      body: body ?? this.body,
      footer: footer ?? this.footer,
      primary: primary ?? this.primary,
      primaryGradientEnd: primaryGradientEnd ?? this.primaryGradientEnd,
      primaryGradientStart: primaryGradientStart ?? this.primaryGradientStart,
      shadowColor: shadowColor ?? this.shadowColor,
      primaryGradient: primaryGradient ?? this.primaryGradient,
      shadow: shadow ?? this.shadow,
      statuses: statuses ?? this.statuses,
    );
  }

  @override
  Colors lerp(covariant ThemeExtension<Colors>? other, double t) {
    if (other is! Colors) return this as Colors;
    return Colors(
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      title: Color.lerp(title, other.title, t)!,
      subtitle: Color.lerp(subtitle, other.subtitle, t)!,
      body: Color.lerp(body, other.body, t)!,
      footer: Color.lerp(footer, other.footer, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryGradientEnd:
          Color.lerp(primaryGradientEnd, other.primaryGradientEnd, t)!,
      primaryGradientStart:
          Color.lerp(primaryGradientStart, other.primaryGradientStart, t)!,
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t)!,
      primaryGradient: t < 0.5 ? primaryGradient : other.primaryGradient,
      shadow: t < 0.5 ? shadow : other.shadow,
      statuses: statuses.lerp(other.statuses, t) as Statuses,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Colors &&
            const DeepCollectionEquality().equals(white, other.white) &&
            const DeepCollectionEquality().equals(black, other.black) &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality()
                .equals(onBackground, other.onBackground) &&
            const DeepCollectionEquality().equals(title, other.title) &&
            const DeepCollectionEquality().equals(subtitle, other.subtitle) &&
            const DeepCollectionEquality().equals(body, other.body) &&
            const DeepCollectionEquality().equals(footer, other.footer) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality()
                .equals(primaryGradientEnd, other.primaryGradientEnd) &&
            const DeepCollectionEquality()
                .equals(primaryGradientStart, other.primaryGradientStart) &&
            const DeepCollectionEquality()
                .equals(shadowColor, other.shadowColor) &&
            const DeepCollectionEquality()
                .equals(primaryGradient, other.primaryGradient) &&
            const DeepCollectionEquality().equals(shadow, other.shadow) &&
            const DeepCollectionEquality().equals(statuses, other.statuses));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(white),
      const DeepCollectionEquality().hash(black),
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(onBackground),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(footer),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(primaryGradientEnd),
      const DeepCollectionEquality().hash(primaryGradientStart),
      const DeepCollectionEquality().hash(shadowColor),
      const DeepCollectionEquality().hash(primaryGradient),
      const DeepCollectionEquality().hash(shadow),
      const DeepCollectionEquality().hash(statuses),
    );
  }
}

extension ColorsBuildContext on BuildContext {
  Colors get colors => Theme.of(this).extension<Colors>()!;
}

mixin _$StatusesTailorMixin on ThemeExtension<Statuses> {
  Color get awaitingConfirmation;
  Color get cancelled;
  Color get completed;
  Color get inProgress;
  Color get pending;
  Color get request;

  @override
  Statuses copyWith({
    Color? awaitingConfirmation,
    Color? cancelled,
    Color? completed,
    Color? inProgress,
    Color? pending,
    Color? request,
  }) {
    return Statuses(
      awaitingConfirmation: awaitingConfirmation ?? this.awaitingConfirmation,
      cancelled: cancelled ?? this.cancelled,
      completed: completed ?? this.completed,
      inProgress: inProgress ?? this.inProgress,
      pending: pending ?? this.pending,
      request: request ?? this.request,
    );
  }

  @override
  Statuses lerp(covariant ThemeExtension<Statuses>? other, double t) {
    if (other is! Statuses) return this as Statuses;
    return Statuses(
      awaitingConfirmation:
          Color.lerp(awaitingConfirmation, other.awaitingConfirmation, t)!,
      cancelled: Color.lerp(cancelled, other.cancelled, t)!,
      completed: Color.lerp(completed, other.completed, t)!,
      inProgress: Color.lerp(inProgress, other.inProgress, t)!,
      pending: Color.lerp(pending, other.pending, t)!,
      request: Color.lerp(request, other.request, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Statuses &&
            const DeepCollectionEquality()
                .equals(awaitingConfirmation, other.awaitingConfirmation) &&
            const DeepCollectionEquality().equals(cancelled, other.cancelled) &&
            const DeepCollectionEquality().equals(completed, other.completed) &&
            const DeepCollectionEquality()
                .equals(inProgress, other.inProgress) &&
            const DeepCollectionEquality().equals(pending, other.pending) &&
            const DeepCollectionEquality().equals(request, other.request));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(awaitingConfirmation),
      const DeepCollectionEquality().hash(cancelled),
      const DeepCollectionEquality().hash(completed),
      const DeepCollectionEquality().hash(inProgress),
      const DeepCollectionEquality().hash(pending),
      const DeepCollectionEquality().hash(request),
    );
  }
}

extension StatusesBuildContext on BuildContext {
  Statuses get statuses => Theme.of(this).extension<Statuses>()!;
}

mixin _$StylesTailorMixin on ThemeExtension<Styles> {
  TextStyle get header;
  TextStyle get title1;
  TextStyle get title2;
  TextStyle get title3;
  TextStyle get subtitle1;
  TextStyle get subtitle2;
  TextStyle get subtitle3;
  TextStyle get body1;
  TextStyle get body2;
  TextStyle get body3;
  TextStyle get footer1;
  TextStyle get footer2;
  TextStyle get footer3;

  @override
  Styles copyWith({
    TextStyle? header,
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? title3,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? subtitle3,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? body3,
    TextStyle? footer1,
    TextStyle? footer2,
    TextStyle? footer3,
  }) {
    return Styles(
      header: header ?? this.header,
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      title3: title3 ?? this.title3,
      subtitle1: subtitle1 ?? this.subtitle1,
      subtitle2: subtitle2 ?? this.subtitle2,
      subtitle3: subtitle3 ?? this.subtitle3,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      body3: body3 ?? this.body3,
      footer1: footer1 ?? this.footer1,
      footer2: footer2 ?? this.footer2,
      footer3: footer3 ?? this.footer3,
    );
  }

  @override
  Styles lerp(covariant ThemeExtension<Styles>? other, double t) {
    if (other is! Styles) return this as Styles;
    return Styles(
      header: TextStyle.lerp(header, other.header, t)!,
      title1: TextStyle.lerp(title1, other.title1, t)!,
      title2: TextStyle.lerp(title2, other.title2, t)!,
      title3: TextStyle.lerp(title3, other.title3, t)!,
      subtitle1: TextStyle.lerp(subtitle1, other.subtitle1, t)!,
      subtitle2: TextStyle.lerp(subtitle2, other.subtitle2, t)!,
      subtitle3: TextStyle.lerp(subtitle3, other.subtitle3, t)!,
      body1: TextStyle.lerp(body1, other.body1, t)!,
      body2: TextStyle.lerp(body2, other.body2, t)!,
      body3: TextStyle.lerp(body3, other.body3, t)!,
      footer1: TextStyle.lerp(footer1, other.footer1, t)!,
      footer2: TextStyle.lerp(footer2, other.footer2, t)!,
      footer3: TextStyle.lerp(footer3, other.footer3, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Styles &&
            const DeepCollectionEquality().equals(header, other.header) &&
            const DeepCollectionEquality().equals(title1, other.title1) &&
            const DeepCollectionEquality().equals(title2, other.title2) &&
            const DeepCollectionEquality().equals(title3, other.title3) &&
            const DeepCollectionEquality().equals(subtitle1, other.subtitle1) &&
            const DeepCollectionEquality().equals(subtitle2, other.subtitle2) &&
            const DeepCollectionEquality().equals(subtitle3, other.subtitle3) &&
            const DeepCollectionEquality().equals(body1, other.body1) &&
            const DeepCollectionEquality().equals(body2, other.body2) &&
            const DeepCollectionEquality().equals(body3, other.body3) &&
            const DeepCollectionEquality().equals(footer1, other.footer1) &&
            const DeepCollectionEquality().equals(footer2, other.footer2) &&
            const DeepCollectionEquality().equals(footer3, other.footer3));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(title1),
      const DeepCollectionEquality().hash(title2),
      const DeepCollectionEquality().hash(title3),
      const DeepCollectionEquality().hash(subtitle1),
      const DeepCollectionEquality().hash(subtitle2),
      const DeepCollectionEquality().hash(subtitle3),
      const DeepCollectionEquality().hash(body1),
      const DeepCollectionEquality().hash(body2),
      const DeepCollectionEquality().hash(body3),
      const DeepCollectionEquality().hash(footer1),
      const DeepCollectionEquality().hash(footer2),
      const DeepCollectionEquality().hash(footer3),
    );
  }
}

extension StylesBuildContext on BuildContext {
  Styles get styles => Theme.of(this).extension<Styles>()!;
}
