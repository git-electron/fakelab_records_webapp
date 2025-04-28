import '../../../core/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({
    this.height,
    super.key,
  });

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? double.maxFinite,
      width: double.maxFinite,
      alignment: Alignment.center,
      child: SizedBox.square(
        dimension: 30,
        child: CircularProgressIndicator(
          color: context.colors.onBackground,
          strokeCap: StrokeCap.round,
          strokeWidth: 5,
        ),
      ),
    );
  }
}
