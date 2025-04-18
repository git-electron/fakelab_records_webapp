import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class Locator {
  const Locator();

  AssetsAudioPlayer get assetsAudioPlayer => AssetsAudioPlayer();

  FirebaseDatabase get database => FirebaseDatabase.instance;

  DatabaseReference get ref => database.ref();

  Logger get logger => Logger(
        level: Level.all,
        output: ConsoleOutput(),
        printer: PrettyPrinter(
          dateTimeFormat: DateTimeFormat.dateAndTime,
        ),
      );
}
