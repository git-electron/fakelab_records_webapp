part of 'images_viewer_bloc.dart';

@freezed
class ImagesViewerState with _$ImagesViewerState {
  const factory ImagesViewerState({
    @Default(0.0) double positionYDelta,
    @Default(0.0) double initialYPosition,
    @Default(0.0) double currentYPosition,
    @Default(Duration.zero) Duration animationDuration,
  }) = _ImagesViewerState;
}
