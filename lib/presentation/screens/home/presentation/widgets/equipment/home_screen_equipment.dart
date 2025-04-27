import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/theme/theme_extensions.dart';
import 'equipment_list.dart';

class HomeScreenEquipment extends StatelessWidget {
  const HomeScreenEquipment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Pad(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EquipmentHeader(),
          Gap(20),
          EquipmentList(),
        ],
      ),
    );
  }
}

class EquipmentHeader extends StatelessWidget {
  const EquipmentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Text(
        'Наше оборудование',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}
