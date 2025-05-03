import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class Locator {
  const Locator();

  AssetsAudioPlayer get assetsAudioPlayer => AssetsAudioPlayer();

  FirebaseDatabase get database => FirebaseDatabase.instance;

  DatabaseReference get ref => database.ref();

  @preResolve
  Future<Cloudinary> get cloudinary async {
    final DataSnapshot snapshot =
        await ref.child('config/cloudinaryApiUrl').get();
    final String url = snapshot.value as String;
    final Cloudinary cloudinary = Cloudinary.fromStringUrl(url);
    cloudinary.config.urlConfig.secure = true;
    return cloudinary;
  }

  Logger get logger => Logger(
        level: Level.all,
        output: ConsoleOutput(),
        printer: PrettyPrinter(
          methodCount: 0,
          errorMethodCount: 4,
          dateTimeFormat: DateTimeFormat.dateAndTime,
        ),
      );
}
