import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/extensions/border_radius_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../core/extensions/color_extensions.dart';
import '../../../core/theme/theme_extensions.dart';
import 'models/date_picker_result.dart';

part 'button.dart';

class AppDatePickerDialog extends StatelessWidget {
  AppDatePickerDialog({
    required this.selectionMode,
    this.minDate,
    this.maxDate,
    this.initialDate,
    this.initialDateRange,
    super.key,
  });

  final DateTime? minDate;
  final DateTime? maxDate;
  final DateTime? initialDate;
  final PickerDateRange? initialDateRange;
  final DateRangePickerSelectionMode selectionMode;

  static Future<DatePickerResult?> show(
    BuildContext context, {
    DateTime? initialDate,
    DateTime? minDate,
    DateTime? maxDate,
  }) async {
    return await showDialog<DatePickerResult?>(
      context: context,
      builder: (context) => Dialog(
        child: AppDatePickerDialog(
          minDate: minDate,
          maxDate: maxDate,
          initialDate: initialDate,
          selectionMode: DateRangePickerSelectionMode.single,
        ),
      ),
    );
  }

  static Future<DatePickerRangeResult?> showRange(
    BuildContext context, {
    PickerDateRange? initialDateRange,
    DateTime? minDate,
    DateTime? maxDate,
  }) async {
    return await showDialog<DatePickerRangeResult?>(
      context: context,
      builder: (context) => Dialog(
        child: AppDatePickerDialog(
          minDate: minDate,
          maxDate: maxDate,
          initialDateRange: initialDateRange,
          selectionMode: DateRangePickerSelectionMode.range,
        ),
      ),
    );
  }

  final DateRangePickerController _controller = DateRangePickerController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: 700,
      height: size.height * .55,
      padding: const Pad(all: 20),
      child: Column(
        children: [
          Expanded(
            child: SfDateRangePicker(
              controller: _controller,
              headerHeight: 50,
              minDate: minDate,
              maxDate: maxDate,
              monthFormat: 'MMMM',
              selectionMode: selectionMode,
              initialSelectedDate: initialDate,
              initialSelectedRange: initialDateRange,
              headerStyle: DateRangePickerHeaderStyle(
                backgroundColor: context.colors.transparent,
                textStyle: context.styles.title3.copyWith(fontSize: 16),
              ),
              monthCellStyle: DateRangePickerMonthCellStyle(
                textStyle: context.styles.body1,
                todayTextStyle: context.styles.body1,
                weekendTextStyle: context.styles.body1,
              ),
              yearCellStyle: DateRangePickerYearCellStyle(
                textStyle: context.styles.body1,
                todayTextStyle: context.styles.body1,
                leadingDatesTextStyle: context.styles.body1,
                disabledDatesTextStyle: context.styles.body2.copyWith(
                  color: context.colors.footer,
                ),
              ),
              rangeTextStyle: context.styles.body1,
              selectionTextStyle: context.styles.body1,
              selectionColor: context.colors.primary,
              backgroundColor: context.colors.transparent,
              todayHighlightColor: context.colors.primary,
              rangeSelectionColor: context.colors.primary.copyWithOpacity(.25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (initialDate != null || initialDateRange != null)
                _Button(
                  onTap: () => switch (selectionMode) {
                    DateRangePickerSelectionMode.single =>
                      context.pop(DatePickerResult(isReset: true)),
                    DateRangePickerSelectionMode.range =>
                      context.pop(DatePickerRangeResult(isReset: true)),
                    _ => null,
                  },
                  text: 'Сброс',
                  textColor: context.colors.onBackground,
                  backgroundColor:
                      context.colors.onBackground.copyWithOpacity(.1),
                )
              else
                const SizedBox(),
              Row(
                children: [
                  _Button(
                    onTap: context.pop,
                    text: 'Отменить',
                    textColor: context.colors.onBackground,
                    backgroundColor:
                        context.colors.onBackground.copyWithOpacity(.1),
                  ),
                  const Gap(5),
                  _Button(
                    onTap: () => switch (selectionMode) {
                      DateRangePickerSelectionMode.single =>
                        context.pop(DatePickerResult(
                          date: _controller.selectedDate,
                        )),
                      DateRangePickerSelectionMode.range =>
                        context.pop(DatePickerRangeResult(
                          dateRange: _controller.selectedRange,
                        )),
                      _ => null,
                    },
                    text: 'Выбрать',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
