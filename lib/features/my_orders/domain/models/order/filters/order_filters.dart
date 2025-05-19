import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_filters.freezed.dart';
part 'order_filters.g.dart';

@freezed
class OrderFilters with _$OrderFilters {

  factory OrderFilters({
    required String userIdStatusType,
  }) = _OrderFilters;

  factory OrderFilters.fromJson(Map<String, dynamic> json) => _$OrderFiltersFromJson(json);
}