part of 'audio_player_bloc.dart';

@freezed
class AudioPlayerEvent with _$AudioPlayerEvent {
  const factory AudioPlayerEvent.seek(double value) = _Seek;

  const factory AudioPlayerEvent.seekStart() = _SeekStart;

  const factory AudioPlayerEvent.seekEnd(Duration to) = _SeekEnd;

  const factory AudioPlayerEvent.setLoading(bool isLoading) = _SetLoading;

  const factory AudioPlayerEvent.playButtonPressed(
    String filePath,
  ) = _PlayButtonPressed;

  const factory AudioPlayerEvent.isPlayingStateChanged(
    bool isPlaying,
  ) = _IsPlayingStateChanged;
}
