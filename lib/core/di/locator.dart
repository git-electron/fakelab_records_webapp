import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class Locator {
  const Locator();

  AssetsAudioPlayer get assetsAudioPlayer => AssetsAudioPlayer();

  Logger get logger => Logger(
        level: Level.all,
        output: ConsoleOutput(),
        printer: PrettyPrinter(
          dateTimeFormat: DateTimeFormat.dateAndTime,
        ),
      );
}
