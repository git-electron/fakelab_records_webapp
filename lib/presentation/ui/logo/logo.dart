import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
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
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 20),
            color: Color(0xffFF8F8F),
            blurRadius: 100,
          ),
        ],
      ),
      child: Text('fklbffgdfgjdkfgkdfg'),
    );
  }
}
