import 'package:freezed_annotation/freezed_annotation.dart';

part 'safe_area_inset.freezed.dart';
part 'safe_area_inset.g.dart';

@freezed
class SafeAreaInset with _$SafeAreaInset {

  factory SafeAreaInset({
    required int top,
    required int left,
    required int right,
    required int bottom,
  }) = _SafeAreaInset;

  factory SafeAreaInset.fromJson(Map<String, dynamic> json) => _$SafeAreaInsetFromJson(json);
}