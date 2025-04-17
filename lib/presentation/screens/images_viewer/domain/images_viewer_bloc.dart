import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'images_viewer_event.dart';
part 'images_viewer_state.dart';
part 'images_viewer_bloc.freezed.dart';

@injectable
class ImagesViewerBloc extends Bloc<ImagesViewerEvent, ImagesViewerState> {
  ImagesViewerBloc() : super(const _ImagesViewerState()) {
    on<_SetPositionYDelta>(_setPositionYDelta);
    on<_SetInitialYPosition>(_setInitialYPosition);
    on<_SetCurrentYPosition>(_setCurrentYPosition);
    on<_SetAnimationDuration>(_setAnimationDuration);
  }

  Future<void> _setPositionYDelta(
    _SetPositionYDelta event,
    Emitter<ImagesViewerState> emit,
  ) async =>
      emit(state.copyWith(positionYDelta: event.positionYDelta));

  Future<void> _setInitialYPosition(
    _SetInitialYPosition event,
    Emitter<ImagesViewerState> emit,
  ) async =>
      emit(state.copyWith(initialYPosition: event.initialYPosition));

  Future<void> _setCurrentYPosition(
    _SetCurrentYPosition event,
    Emitter<ImagesViewerState> emit,
  ) async =>
      emit(state.copyWith(currentYPosition: event.currentYPosition));

  Future<void> _setAnimationDuration(
    _SetAnimationDuration event,
    Emitter<ImagesViewerState> emit,
  ) async =>
      emit(state.copyWith(animationDuration: event.animationDuration));
}
