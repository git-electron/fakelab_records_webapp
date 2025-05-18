import 'package:flutter/material.dart';

import '../../../core/gen/assets.gen.dart';

enum LogoType {
  recordsCompact,
  recordsFull,
  recordsAdmin,
  fakelabCompact,
  fakelabFull,
}

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    this.height,
    this.width,
    this.type = LogoType.recordsCompact,
  });

  final double? height;
  final double? width;
  final LogoType type;

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      LogoType.recordsCompact => Assets.icons.logo.records.compact,
      LogoType.fakelabCompact => Assets.icons.logo.fakelab.compact,
      LogoType.recordsFull => Assets.icons.logo.records.full,
      LogoType.fakelabFull => Assets.icons.logo.fakelab.full,
      LogoType.recordsAdmin => Assets.icons.logo.records.admin,
    }
        .svg(
      height: height ?? 25,
      width: width,
      clipBehavior: Clip.none,
    );
  }
}
