import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:collection/collection.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class AppDropdownButton<T> extends StatefulWidget {
  const AppDropdownButton({
    required this.items,
    required this.onChanged,
    this.style,
    this.padding,
    this.enabled,
    this.hintText,
    this.hintStyle,
    this.decoration,
    this.height = 52,
    this.initialValue,
    this.isLoading = false,
    this.isAvailable = true,
    this.withSearch = false,
    super.key,
  });

  final bool? enabled;
  final double height;
  final bool isLoading;
  final T? initialValue;
  final bool withSearch;
  final bool isAvailable;
  final String? hintText;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final List<DropdownButtonItem<T>> items;
  final void Function(T? value) onChanged;

  @override
  State<AppDropdownButton<T>> createState() => _AppDropdownButtonState();
}

class _AppDropdownButtonState<T> extends State<AppDropdownButton<T>>
    with SingleTickerProviderStateMixin {
  late DropdownButtonItem<T>? _selectedItem = widget.items
      .firstWhereOrNull((item) => item.value == widget.initialValue);

  late final AnimationController _arrowAnimationController =
      AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 200),
    upperBound: 0.5,
  );
  late final Animation<double> _arrowAnimation =
      Tween<double>(begin: 0, end: 0.73).animate(
    CurvedAnimation(parent: _arrowAnimationController, curve: Curves.easeOut),
  );

  @override
  void dispose() {
    _arrowAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !(widget.enabled ?? true),
      child: Opacity(
        opacity: (widget.enabled ?? true) ? 1 : .6,
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            isDense: true,
            items: _buildItems(widget.items, _selectedItem),
            value: _selectedItem?.title,

            // button
            customButton: Container(
              height: widget.height,
              width: double.maxFinite,
              decoration: widget.decoration ??
                  const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
              padding: widget.padding,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _selectedItem?.title ?? widget.hintText ?? '',
                      style: _selectedItem != null
                          ? widget.style
                          : widget.hintStyle,
                    ),
                  ),
                  RotationTransition(
                    turns: _arrowAnimation,
                    child: Assets.icons.arrowDown.light.svg(),
                  ),
                ],
              ),
            ),
            buttonStyleData: ButtonStyleData(
              elevation: 0,
              overlayColor: WidgetStatePropertyAll(
                context.colors.transparent,
              ),
            ),

            // dropdown
            dropdownStyleData: DropdownStyleData(
              elevation: 0,
              offset: const Offset(0, -10),
              maxHeight: MediaQuery.of(context).size.height / 2.1,
              padding: Pad.zero,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: context.colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    color: context.colors.primary.copyWithOpacity(.25),
                    blurRadius: 20,
                  ),
                ],
              ),
            ),

            // menu
            menuItemStyleData: MenuItemStyleData(
              height: widget.height,
              padding: EdgeInsets.zero,
              customHeights: _getItemsHeights(widget.items),
            ),

            // on
            onChanged: (value) {
              final item = widget.items.firstWhereOrNull(
                (e) => e.title == value,
              );
              widget.onChanged(item?.value);
              setState(() => _selectedItem = item);
            },
            onMenuStateChange: (bool isOpened) {
              if (isOpened) {
                _arrowAnimationController.forward();
              } else {
                _arrowAnimationController.reverse();
              }
            },
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _buildItems(
    List<DropdownButtonItem<T>> items,
    DropdownButtonItem<T>? selectedValue,
  ) =>
      items.map((item) {
        return DropdownMenuItem<String>(
            value: item.title,
            child: Container(
              height: widget.height,
              color: item == selectedValue
                  ? context.colors.primary
                  : context.colors.transparent,
              alignment: Alignment.centerLeft,
              padding: const Pad(horizontal: 20),
              child: Text(item.title, style: context.styles.body1),
            ));
      }).toList();

  List<double> _getItemsHeights(List<DropdownButtonItem<T>> items) =>
      List.filled(items.length, widget.height);
}

class DropdownButtonItem<T> {
  DropdownButtonItem({
    required this.title,
    required this.value,
  });

  final String title;
  final T value;
}
