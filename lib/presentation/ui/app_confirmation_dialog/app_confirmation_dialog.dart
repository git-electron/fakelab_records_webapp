import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'confirmation_dialog_button.dart';

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
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ConfirmationDialogButton(
                onTap: context.pop,
                text: 'Нет',
                textColor: context.colors.onBackground,
                backgroundColor:
                    context.colors.onBackground.copyWithOpacity(.1),
              ),
              const Gap(5),
              ConfirmationDialogButton(
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
