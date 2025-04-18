part of 'audio_player_bloc.dart';

@freezed
class AudioPlayerEvent with _$AudioPlayerEvent {
  const factory AudioPlayerEvent.onSeek(double value) = _OnSeek;

  const factory AudioPlayerEvent.onSeekStart() = _OnSeekStart;

  const factory AudioPlayerEvent.onSeekEnd(Duration to) = _OnSeekEnd;

  const factory AudioPlayerEvent.playButtonPressed(String filePath) =
      _PlayButtonPressed;

  const factory AudioPlayerEvent.isPlayingStateChanged(bool isPlaying) =
      _IsPlayingStateChanged;
}
