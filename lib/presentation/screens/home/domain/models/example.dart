import 'package:freezed_annotation/freezed_annotation.dart';

import 'example_genre.dart';
import 'example_service_type.dart';

part 'example.freezed.dart';
part 'example.g.dart';

@freezed
class Example with _$Example {
  factory Example({
    required String title,
    required String filePath,
    required List<String> artists,
    required List<ExampleGenre> genres,
    required List<ExampleServiceType> services,
  }) = _Example;

  factory Example.fromJson(Map<String, dynamic> json) =>
      _$ExampleFromJson(json);
}
