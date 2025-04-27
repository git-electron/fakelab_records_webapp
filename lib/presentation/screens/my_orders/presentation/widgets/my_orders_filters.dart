import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_dropdown_button.dart';
import 'package:flutter/material.dart';

class MyOrdersFilters extends StatelessWidget {
  const MyOrdersFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.primary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: AppDropdownButton(
                items: [
                  DropdownButtonItem(title: 'ready', value: 'ready'),
                  DropdownButtonItem(title: 'not ready', value: 'not ready'),
                ],
                onChanged: print,
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
