import 'dart:async';

import 'package:flutter/material.dart';

part 'widgets/shimmer_animator.dart';
part 'widgets/custom_shimmer_animation.dart';

class ShimmerAnimation extends StatelessWidget {
  const ShimmerAnimation({
    required this.child,
    this.width = 0.2,
    this.opacity = 0.2,
    this.isEnabled = true,
    this.color = Colors.white,
    this.duration = const Duration(seconds: 3),
    this.interval = const Duration(seconds: 0),
    this.direction = const ShimmerDirection.fromLTtoRB(),
    super.key,
  });

  final Widget child;
  final Color color;
  final bool isEnabled;
  final double opacity, width;
  final ShimmerDirection direction;
  final Duration duration, interval;

  @override
  Widget build(BuildContext context) {
    if (isEnabled) {
      return ShimmerAnimator(
        key: key,
        width: width,
        color: color,
        opacity: opacity,
        duration: duration,
        interval: interval,
        direction: direction,
        child: child,
      );
    } else {
      return child;
    }
  }
}

class ShimmerDirection {
  const ShimmerDirection(this.begin, this.end);

  const ShimmerDirection._fromLTtoRB({
    this.begin = Alignment.topLeft,
    this.end = Alignment.centerRight,
  });

  const ShimmerDirection._fromRTtoLB({
    this.begin = Alignment.centerRight,
    this.end = Alignment.topLeft,
  });

  const ShimmerDirection._fromLBtoRT({
    this.begin = Alignment.bottomLeft,
    this.end = Alignment.centerRight,
  });

  const ShimmerDirection._fromRBtoLT({
    this.begin = Alignment.topRight,
    this.end = Alignment.centerLeft,
  });

  const ShimmerDirection._fromLeftToRight({
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
  });

  const ShimmerDirection._fromRightToLeft({
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
  });

  final Alignment begin, end;

  const factory ShimmerDirection.fromLTtoRB() = ShimmerDirection._fromLTtoRB;

  const factory ShimmerDirection.fromRTtoLB() = ShimmerDirection._fromRTtoLB;

  const factory ShimmerDirection.fromLBtoRT() = ShimmerDirection._fromLBtoRT;

  const factory ShimmerDirection.fromRBtoLT() = ShimmerDirection._fromRBtoLT;

  const factory ShimmerDirection.fromLeftToRight() =
      ShimmerDirection._fromLeftToRight;

  const factory ShimmerDirection.fromRightToLeft() =
      ShimmerDirection._fromRightToLeft;
}
