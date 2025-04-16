import 'package:freezed_annotation/freezed_annotation.dart';

part 'safe_area_inset.freezed.dart';
part 'safe_area_inset.g.dart';

@freezed
class SafeAreaInset with _$SafeAreaInset {

  factory SafeAreaInset({
    required double top,
    required double left,
    required double right,
    required double bottom,
  }) = _SafeAreaInset;

  factory SafeAreaInset.fromJson(Map<String, dynamic> json) => _$SafeAreaInsetFromJson(json);
}