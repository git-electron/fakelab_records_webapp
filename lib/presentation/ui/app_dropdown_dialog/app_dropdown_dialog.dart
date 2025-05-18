import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/extensions/border_radius_extensions.dart';
import '../../../core/extensions/color_extensions.dart';
import '../../../core/extensions/string_extensions.dart';
import '../../../core/theme/theme_extensions.dart';
import '../app_dropdown_button.dart';
import '../wrappers/tappable.dart';

part 'button.dart';

class AppDropdownDialog<T> extends StatelessWidget {
  AppDropdownDialog({
    this.title,
    this.hintText,
    this.description,
    this.initialValue,
    required this.items,
    this.searchHintText,
    this.searchMatchFn,
    this.menuItemBuilder,
    this.selectedItemBuilder,
    this.isSearchEnabled = false,
    super.key,
  });

  final String? title;
  final T? initialValue;
  final String? hintText;
  final String? description;
  final bool isSearchEnabled;
  final String? searchHintText;

  final List<DropdownButtonItem<T>> items;
  final Widget Function(DropdownButtonItem<T>)? menuItemBuilder;
  final Widget Function(DropdownButtonItem<T>)? selectedItemBuilder;
  final bool Function(DropdownMenuItem<T>, String)? searchMatchFn;

  static Future<T?> show<T>(
    BuildContext context, {
    required List<DropdownButtonItem<T>> items,
    String? title,
    T? initialValue,
    String? hintText,
    String? description,
    String? searchHintText,
    bool isSearchEnabled = false,
    Widget Function(DropdownButtonItem<T>)? menuItemBuilder,
    Widget Function(DropdownButtonItem<T>)? selectedItemBuilder,
    bool Function(DropdownMenuItem<T>, String)? searchMatchFn,
  }) async {
    return await showDialog<T?>(
      context: context,
      builder: (context) => Dialog(
        child: AppDropdownDialog<T>(
          items: items,
          title: title,
          hintText: hintText,
          description: description,
          initialValue: initialValue,
          searchHintText: searchHintText,
          searchMatchFn: searchMatchFn,
          menuItemBuilder: menuItemBuilder,
          isSearchEnabled: isSearchEnabled,
          selectedItemBuilder: selectedItemBuilder,
        ),
      ),
    );
  }

  late final ValueNotifier<T?> _selectedItem = ValueNotifier(initialValue);

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
          AppDropdownButton<T>(
            key: key,
            items: items,
            hintText: hintText,
            initialValue: initialValue,
            searchHintText: searchHintText,
            isSearchEnabled: isSearchEnabled,
            searchMatchFn: searchMatchFn,
            onChanged: (value) => _selectedItem.value = value,
            menuItemBuilder: menuItemBuilder,
            selectedItemBuilder: selectedItemBuilder,
          ),
          const Gap(20),
          Row(
            spacing: 5,
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
              ValueListenableBuilder(
                  valueListenable: _selectedItem,
                  builder: (context, value, child) {
                    return _Button(
                      onTap: () => context.pop(_selectedItem.value),
                      isEnabled: _selectedItem.value != null,
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
