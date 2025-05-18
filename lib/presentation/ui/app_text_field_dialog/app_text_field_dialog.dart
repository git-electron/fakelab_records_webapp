import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../../../core/extensions/border_radius_extensions.dart';
import '../../../core/extensions/color_extensions.dart';
import '../../../core/extensions/list_extensions.dart';
import '../../../core/extensions/string_extensions.dart';
import '../../../core/theme/theme_extensions.dart';
import '../app_text_field.dart';
import '../wrappers/tappable.dart';

part 'button.dart';

class AppTextFieldDialog extends StatelessWidget {
  AppTextFieldDialog({
    this.title,
    this.hintText,
    this.description,
    this.keyboardType,
    this.autofillHints,
    this.inputFormatters,
    this.shouldAutofocus = true,
    super.key,
  });

  final String? title;
  final String? hintText;
  final String? description;
  final bool shouldAutofocus;
  final TextInputType? keyboardType;
  final List<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;

  static Future<String?> show(
    BuildContext context, {
    String? title,
    String? hintText,
    String? description,
    TextInputType? keyboardType,
    List<String>? autofillHints,
    bool shouldAutofocus = true,
    List<TextInputFormatter>? inputFormatters,
  }) async {
    return await showDialog<String?>(
      context: context,
      builder: (context) => Dialog(
        child: AppTextFieldDialog(
          title: title,
          hintText: hintText,
          description: description,
          keyboardType: keyboardType,
          autofillHints: autofillHints,
          shouldAutofocus: shouldAutofocus,
          inputFormatters: inputFormatters,
        ),
      ),
    );
  }

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      padding: const Pad(all: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title.isNotNullAndEmpty)
            Padding(
              padding: const Pad(bottom: 10),
              child: Text(
                title!,
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
          AppTextField(
            hintText: hintText,
            controller: _controller,
            keyboardType: keyboardType,
            shouldAutofocus: shouldAutofocus,
            inputFormatters: inputFormatters,
          ),
          const Gap(10),
          if (autofillHints.isNotNullAndEmpty)
            Padding(
              padding: const Pad(bottom: 20),
              child: Wrap(
                spacing: 3,
                runSpacing: 5,
                children: autofillHints!
                    .map(
                      (hint) => _Button(
                        onTap: () => _controller.text = hint,
                        text: hint,
                        textColor: context.colors.onBackground,
                        backgroundColor:
                            context.colors.onBackground.copyWithOpacity(.1),
                      ),
                    )
                    .toList(),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _Button(
                onTap: context.pop,
                text: 'Отменить',
                textColor: context.colors.onBackground,
                backgroundColor:
                    context.colors.onBackground.copyWithOpacity(.1),
              ),
              const Gap(5),
              ValueListenableBuilder(
                  valueListenable: _controller,
                  builder: (context, value, child) {
                    return _Button(
                      onTap: () => context.pop(_controller.text),
                      isEnabled: _controller.text.isNotEmpty,
                      text: 'Подтвердить',
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
