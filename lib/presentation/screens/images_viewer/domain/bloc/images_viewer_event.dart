part of 'images_viewer_bloc.dart';

@freezed
class ImagesViewerEvent with _$ImagesViewerEvent {
  const factory ImagesViewerEvent.setPositionYDelta(
    double positionYDelta,
  ) = _SetPositionYDelta;

  const factory ImagesViewerEvent.setInitialYPosition(
    double initialYPosition,
  ) = _SetInitialYPosition;

  const factory ImagesViewerEvent.setCurrentYPosition(
    double currentYPosition,
  ) = _SetCurrentYPosition;

  const factory ImagesViewerEvent.setAnimationDuration(
    Duration animationDuration,
  ) = _SetAnimationDuration;
}
