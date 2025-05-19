import 'dart:math';

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

extension BorderRadiusExtensions on BorderRadius {
  static const double _cornerSmoothing = .6;

  SmoothRectangleBorder smoothShape({BorderSide? side}) =>
      SmoothRectangleBorder(
        side: side ?? BorderSide.none,
        borderRadius: SmoothBorderRadius.only(
          topLeft: SmoothRadius(
            cornerRadius: max(topLeft.x, topLeft.y),
            cornerSmoothing: _cornerSmoothing,
          ),
          topRight: SmoothRadius(
            cornerRadius: max(topRight.x, topRight.y),
            cornerSmoothing: _cornerSmoothing,
          ),
          bottomLeft: SmoothRadius(
            cornerRadius: max(bottomLeft.x, bottomLeft.y),
            cornerSmoothing: _cornerSmoothing,
          ),
          bottomRight: SmoothRadius(
            cornerRadius: max(bottomRight.x, bottomRight.y),
            cornerSmoothing: _cornerSmoothing,
          ),
        ),
      );
}
