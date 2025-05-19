import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/extensions/border_radius_extensions.dart';
import '../../../core/extensions/color_extensions.dart';
import '../../../core/extensions/string_extensions.dart';
import '../../../core/theme/theme_extensions.dart';
import '../wrappers/tappable.dart';

part 'button.dart';

class AppConfirmationDialog extends StatelessWidget {
  const AppConfirmationDialog({
    required this.title,
    this.description,
    super.key,
  });

  final String title;
  final String? description;

  static Future<bool?> show(
    BuildContext context, {
    required String title,
    String? description,
  }) async {
    return await showDialog<bool?>(
      context: context,
      builder: (context) => Dialog(
        child: AppConfirmationDialog(
          title: title,
          description: description,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      padding: const Pad(all: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const Pad(bottom: 10),
            child: Text(
              title,
              style: context.styles.title3.copyWith(fontSize: 16),
            ),
          ),
          if (description.isNotNullAndEmpty)
            Padding(
              padding: const Pad(bottom: 10, right: 50),
              child: Text(
                description!,
                style: context.styles.body3,
              ),
            ),
          const Gap(10),
          Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _Button(
                onTap: context.pop,
                text: 'Нет',
                textColor: context.colors.onBackground,
                backgroundColor:
                    context.colors.onBackground.copyWithOpacity(.1),
              ),
              _Button(
                onTap: () => context.pop(true),
                text: 'Да',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
