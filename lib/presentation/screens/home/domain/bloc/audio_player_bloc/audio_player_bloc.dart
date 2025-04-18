import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:fakelab_records_webapp/core/constants/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'audio_player_event.dart';
part 'audio_player_state.dart';
part 'audio_player_bloc.freezed.dart';

@injectable
class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
  AudioPlayerBloc(this.audioPlayer) : super(const _AudioPlayerState()) {
    on<_OnSeek>(_onSeek);
    on<_OnSeekEnd>(_onSeekEnd);
    on<_OnSeekStart>(_onSeekStart);
    on<_PlayButtonPressed>(_onPlayButtonPressed);
    on<_IsPlayingStateChanged>(_onIsPlayingStateChanged);

    audioPlayer.isPlaying.listen((bool isPlaying) {
      if (isPlaying != state.isPlaying) {
        add(AudioPlayerEvent.isPlayingStateChanged(isPlaying));
      }
    });
  }

  @override
  Future<void> close() {
    audioPlayer.dispose();
    return super.close();
  }

  final AssetsAudioPlayer audioPlayer;

  Future<void> _onSeek(_OnSeek event, Emitter<AudioPlayerState> emit) async {
    emit(state.copyWith(seekProgressValue: event.value));
  }

  Future<void> _onSeekStart(
    _OnSeekStart event,
    Emitter<AudioPlayerState> emit,
  ) async {
    emit(state.copyWith(isSeekInProgress: true));
  }

  Future<void> _onSeekEnd(
    _OnSeekEnd event,
    Emitter<AudioPlayerState> emit,
  ) async {
    await audioPlayer.seek(event.to);
    await audioPlayer.play();
    await Future.delayed(kAnimationDuration);
    emit(state.copyWith(isSeekInProgress: false));
  }

  Future<void> _onPlayButtonPressed(
    _PlayButtonPressed event,
    Emitter<AudioPlayerState> emit,
  ) async {
    if (event.fileName == state.fileName) {
      await audioPlayer.playOrPause();
    } else {
      await audioPlayer.stop();
      await audioPlayer.open(
        Audio.file('assets/audio/examples/${event.fileName}.mp3'),
        autoStart: false,
      );
      await audioPlayer.play();
      emit(state.copyWith(fileName: event.fileName));
    }
    emit(state.copyWith(isPlaying: audioPlayer.isPlaying.value));
  }

  Future<void> _onIsPlayingStateChanged(
    _IsPlayingStateChanged event,
    Emitter<AudioPlayerState> emit,
  ) async {
    emit(state.copyWith(isPlaying: event.isPlaying));
  }

  Duration get totalDuration =>
      audioPlayer.current.value?.audio.duration ?? const Duration();
  double get totalDurationInMs => totalDuration.inMilliseconds.toDouble();

  Duration get currentDuration => audioPlayer.currentPosition.value;
  double get currentDurationInMs => currentDuration.inMilliseconds.toDouble();
}
