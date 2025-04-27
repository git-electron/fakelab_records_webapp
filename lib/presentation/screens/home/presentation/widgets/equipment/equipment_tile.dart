import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

import '../../../../../../core/gen/assets.gen.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EquipmentTile extends StatelessWidget {
  const EquipmentTile({
    required this.title,
    required this.description,
    required this.icon,
    super.key,
  });

  final String title;
  final String description;
  final SvgGenImage icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              icon.svg(
                height: 60,
                width: 60,
              ),
            ],
          ),
          const Gap(10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.toUpperCase(),
                  style: context.styles.title3.copyWith(fontSize: 14),
                ),
                const Gap(5),
                Text(
                  description,
                  style: context.styles.footer2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
