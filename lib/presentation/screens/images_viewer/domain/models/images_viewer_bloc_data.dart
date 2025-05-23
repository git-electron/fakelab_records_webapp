import 'package:freezed_annotation/freezed_annotation.dart';

part 'images_viewer_bloc_data.freezed.dart';

@freezed
class ImagesViewerBlocData with _$ImagesViewerBlocData {
  const factory ImagesViewerBlocData({
    required List<String> images,
    required int initialIndex,
  }) = _ImagesViewerBlocData;
}
