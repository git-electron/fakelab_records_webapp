import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import '../../../core/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({
    this.isExpanded = true,
    super.key,
  });

  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isExpanded ? double.maxFinite : 500,
      width: double.maxFinite,
      padding: const Pad(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off_rounded,
            size: 100,
            color: context.colors.footer,
          ),
          const Gap(50),
          Text(
            'Мы ничего не нашли',
            textAlign: TextAlign.center,
            style: context.styles.title3.copyWith(fontSize: 20),
          ),
          const Gap(20),
          Text(
            'Попробуй поменять фильтры поиска',
            style: context.styles.body3,
          ),
        ],
      ),
    );
  }
}
