import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/extensions/string_extensions.dart';
import '../../../core/theme/theme_extensions.dart';

class InDevelopmentPage extends StatelessWidget {
  const InDevelopmentPage(
    this.title, {
    this.height,
    super.key,
  });

  final String title;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? double.maxFinite,
      width: double.maxFinite,
      padding: const Pad(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${title.capitalize()} screen',
            style: context.styles.title3.copyWith(fontSize: 20),
          ),
          const Gap(10),
          Text('В разработке...', style: context.styles.footer1),
        ],
      ),
    );
  }
}
