import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

part 'date_picker_result.freezed.dart';

@freezed
class DatePickerResult with _$DatePickerResult {
  factory DatePickerResult({
    DateTime? date,
    @Default(false) bool isReset,
  }) = _DatePickerResult;
}

@freezed
class DatePickerRangeResult with _$DatePickerRangeResult {
  factory DatePickerRangeResult({
    PickerDateRange? dateRange,
    @Default(false) bool isReset,
  }) = _DatePickerRangeResult;
}
