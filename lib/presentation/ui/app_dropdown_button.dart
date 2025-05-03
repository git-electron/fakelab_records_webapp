import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:collection/collection.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:fakelab_records_webapp/presentation/ui/app_text_field.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import '../../core/extensions/color_extensions.dart';
import '../../core/gen/assets.gen.dart';
import '../../core/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class AppDropdownButton<T> extends StatefulWidget {
  const AppDropdownButton({
    required this.items,
    required this.onChanged,
    this.hintText,
    this.initialValue,
    this.searchMatchFn,
    this.searchHintText,
    this.menuItemBuilder,
    this.selectedItemBuilder,
    this.isSearchEnabled = false,
    super.key,
  });

  final T? initialValue;
  final String? hintText;
  final bool isSearchEnabled;
  final String? searchHintText;
  final List<DropdownButtonItem<T>> items;
  final void Function(T? value) onChanged;
  final bool Function(DropdownMenuItem<T>, String)? searchMatchFn;
  final Widget Function(DropdownButtonItem<T> item)? menuItemBuilder;
  final Widget Function(DropdownButtonItem<T> item)? selectedItemBuilder;

  @override
  State<AppDropdownButton<T>> createState() => _AppDropdownButtonState();
}

class _AppDropdownButtonState<T> extends State<AppDropdownButton<T>>
    with SingleTickerProviderStateMixin {
  late DropdownButtonItem<T>? _selectedItem = widget.items
      .firstWhereOrNull((item) => item.value == widget.initialValue);

  late final TextEditingController _controller = TextEditingController();
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

  bool _isOpened = false;
  static const double _itemHeight = 50;

  @override
  void dispose() {
    _arrowAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        isDense: true,
        enableFeedback: false,
        items: _buildItems(widget.items, _selectedItem),
        value: _selectedItem?.value,
        dropdownSearchData: widget.isSearchEnabled
            ? DropdownSearchData<T>(
                searchInnerWidgetHeight: 50,
                searchController: _controller,
                searchInnerWidget: Padding(
                  padding: const Pad(all: 15),
                  child: AppTextField(
                    controller: _controller,
                    hintText: widget.searchHintText,
                    prefixIcon: Assets.icons.search.light,
                    backgroundColor: context.colors.background,
                  ),
                ),
                searchMatchFn: widget.searchMatchFn ??
                    (item, searchValue) {
                      return item.value
                          .toString()
                          .toLowerCase()
                          .contains(searchValue.toLowerCase());
                    },
              )
            : null,

        // buttons
        customButton: Tappable(
          shouldIgnoreIfOnTapIsNull: false,
          child: Container(
            height: _itemHeight,
            width: double.maxFinite,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: context.colors.card,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const Pad(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: widget.selectedItemBuilder != null &&
                          _selectedItem != null
                      ? widget.selectedItemBuilder!(_selectedItem!)
                      : Text(
                          _selectedItem?.title ?? widget.hintText ?? '',
                          style: _selectedItem != null
                              ? context.styles.body2
                              : context.styles.body3.copyWith(
                                  color: context.colors.footer,
                                ),
                        ),
                ),
                Tappable(
                  onTap: _selectedItem != null
                      ? () {
                          widget.onChanged(null);
                          setState(() => _selectedItem = null);
                        }
                      : null,
                  child: AnimatedSwitcher(
                    duration: kAnimationDuration,
                    child: _selectedItem != null && !_isOpened
                        ? Assets.icons.cross.light.svg()
                        : RotationTransition(
                            turns: _arrowAnimation,
                            child: Assets.icons.keyboardArrowDown.light.svg(),
                          ),
                  ),
                ),
              ],
            ),
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
            color: context.colors.card,
            border: Border.all(
              width: 1,
              color: context.colors.footer.copyWithOpacity(.25),
            ),
          ),
        ),

        // menu
        menuItemStyleData: MenuItemStyleData(
          height: _itemHeight,
          padding: EdgeInsets.zero,
          overlayColor: WidgetStatePropertyAll(
            context.colors.footer.copyWithOpacity(.1),
          ),
        ),

        // on
        onChanged: (value) {
          final item = widget.items.firstWhereOrNull(
            (e) => e.value == value,
          );
          widget.onChanged(item?.value);
          setState(() => _selectedItem = item);
        },
        onMenuStateChange: (bool isOpened) {
          setState(() => _isOpened = isOpened);
          if (isOpened) {
            _arrowAnimationController.forward();
          } else {
            _arrowAnimationController.reverse();
          }
        },
      ),
    );
  }

  List<DropdownMenuItem<T>> _buildItems(
    List<DropdownButtonItem<T>> items,
    DropdownButtonItem<T>? selectedValue,
  ) {
    return items.map((item) {
      return DropdownMenuItem<T>(
          value: item.value,
          child: Tappable(
            shouldIgnoreIfOnTapIsNull: false,
            child: Container(
              height: _itemHeight,
              color: item == selectedValue
                  ? context.colors.footer.copyWithOpacity(.25)
                  : context.colors.transparent,
              alignment: Alignment.centerLeft,
              padding: const Pad(horizontal: 20),
              child: widget.menuItemBuilder != null
                  ? widget.menuItemBuilder!(item)
                  : Text(
                      item.title,
                      style: context.styles.footer1.copyWith(
                        color: context.colors.onBackground,
                      ),
                    ),
            ),
          ));
    }).toList();
  }
}

class DropdownButtonItem<T> {
  DropdownButtonItem({
    required this.title,
    required this.value,
  });

  final String title;
  final T value;
}
