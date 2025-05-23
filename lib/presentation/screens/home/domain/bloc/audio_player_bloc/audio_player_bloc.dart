import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/constants/constants.dart';

part 'audio_player_bloc.freezed.dart';
part 'audio_player_event.dart';
part 'audio_player_state.dart';

@injectable
class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
  AudioPlayerBloc(this.audioPlayer) : super(const _AudioPlayerState()) {
    on<_Seek>(_onSeek);
    on<_SeekEnd>(_onSeekEnd);
    on<_SeekStart>(_onSeekStart);
    on<_SetLoading>(_onSetLoading);
    on<_PlayButtonPressed>(_onPlayButtonPressed);
    on<_IsPlayingStateChanged>(_onIsPlayingStateChanged);

    audioPlayer.isPlaying.listen(_isPlayingListener);
    audioPlayer.currentPosition.listen(_currentPositionListener);
  }

  @override
  Future<void> close() {
    audioPlayer.dispose();
    return super.close();
  }

  final AssetsAudioPlayer audioPlayer;

  Future<void> _onSeek(_Seek event, Emitter<AudioPlayerState> emit) async {
    emit(state.copyWith(seekProgressValue: event.value));
  }

  Future<void> _onSeekStart(
    _SeekStart event,
    Emitter<AudioPlayerState> emit,
  ) async {
    emit(state.copyWith(isSeekInProgress: true));
  }

  Future<void> _onSeekEnd(
    _SeekEnd event,
    Emitter<AudioPlayerState> emit,
  ) async {
    await audioPlayer.seek(event.to);
    await audioPlayer.play();
    await Future.delayed(kAnimationDuration);
    emit(state.copyWith(isSeekInProgress: false));
  }

  Future<void> _onSetLoading(
    _SetLoading event,
    Emitter<AudioPlayerState> emit,
  ) async {
    emit(state.copyWith(isLoading: event.isLoading));
  }

  Future<void> _onPlayButtonPressed(
    _PlayButtonPressed event,
    Emitter<AudioPlayerState> emit,
  ) async {
    if (event.filePath == state.filePath) {
      await audioPlayer.playOrPause();
    } else {
      emit(state.copyWith(
        isLoading: true,
        filePath: event.filePath,
      ));

      await audioPlayer.stop();
      await audioPlayer.open(
        Audio.network(_getFilePath(event.filePath)),
        autoStart: false,
      );
      await audioPlayer.play();
    }
    emit(state.copyWith(isPlaying: audioPlayer.isPlaying.value));
  }

  Future<void> _onIsPlayingStateChanged(
    _IsPlayingStateChanged event,
    Emitter<AudioPlayerState> emit,
  ) async {
    emit(state.copyWith(isPlaying: event.isPlaying));
  }

  String _getFilePath(String filePath) => '$baseUrl/assets/$filePath';

  Duration get currentDuration => audioPlayer.currentPosition.value;
  double get currentDurationInMs => currentDuration.inMilliseconds.toDouble();

  Duration get totalDuration =>
      audioPlayer.current.value?.audio.duration ?? const Duration();
  double get totalDurationInMs => totalDuration.inMilliseconds.toDouble();

  void _isPlayingListener(bool isPlaying) {
    if (isPlaying != state.isPlaying) {
      add(AudioPlayerEvent.isPlayingStateChanged(isPlaying));
    }
  }

  void _currentPositionListener(Duration currentPosition) {
    if (currentPosition.inMilliseconds != 0) {
      add(const AudioPlayerEvent.setLoading(false));
    }
  }
}
