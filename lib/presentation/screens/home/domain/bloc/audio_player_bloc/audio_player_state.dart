part of 'audio_player_bloc.dart';

@freezed
class AudioPlayerState with _$AudioPlayerState {
  const factory AudioPlayerState({
    @Default(false) bool isPlaying,
    @Default(null) String? filePath,
    @Default(false) bool isSeekInProgress,
    @Default(0.0) double seekProgressValue,
  }) = _AudioPlayerState;

  const AudioPlayerState._();

  bool isFileSelected(String filePathToCheck) => filePathToCheck == filePath;

  bool isFilePlaying(String filePathToCheck) =>
      isFileSelected(filePathToCheck) && isPlaying;
}
