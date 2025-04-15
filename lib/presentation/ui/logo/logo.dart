import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';

enum LogoType { recordsCompact, recordsFull, fakelabCompact, fakelabFull }

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
    return DecoratedBox(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 100,
            offset: Offset(0, 20),
            color: Color(0xffFF8F8F),
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: switch (type) {
        LogoType.recordsCompact => Assets.icons.logo.records.compact,
        LogoType.fakelabCompact => Assets.icons.logo.fakelab.compact,
        LogoType.recordsFull => Assets.icons.logo.records.full,
        LogoType.fakelabFull => Assets.icons.logo.fakelab.full,
      }
          .svg(height: height ?? 25, width: width),
    );
  }
}
