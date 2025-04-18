// ignore_for_file: non_constant_identifier_names
import 'package:fakelab_records_webapp/main.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@injectable
final class Env {
  Env._();

  @FactoryMethod(preResolve: true)
  static Future<Env> load() async {
    await dotenv.load(fileName: './../config.env');
    return _instance ??= Env._();
  }
  
  static Env? _instance;

  String get telegramApiUrl => dotenv.env['TELEGRAM_API_URL']!;

  String get telegramApiToken => isDevelopment
      ? dotenv.env['TELEGRAM_API_TOKEN_DEV']!
      : dotenv.env['TELEGRAM_API_TOKEN_PROD']!;

  String get baseUrl => isDevelopment
      ? dotenv.env['BASE_URL_DEV']!
      : dotenv.env['BASE_URL_PROD']!;

  String get firebaseApiKey => isDevelopment
      ? dotenv.env['FIREBASE_API_KEY_DEV']!
      : dotenv.env['FIREBASE_API_KEY_PROD']!;

  String get firebaseAuthDomain => isDevelopment
      ? dotenv.env['FIREBASE_AUTH_DOMAIN_DEV']!
      : dotenv.env['FIREBASE_AUTH_DOMAIN_PROD']!;

  String get firebaseDatabaseUrl => isDevelopment
      ? dotenv.env['FIREBASE_DATABASE_URL_DEV']!
      : dotenv.env['FIREBASE_DATABASE_URL_PROD']!;

  String get firebaseProjectId => isDevelopment
      ? dotenv.env['FIREBASE_PROJECT_ID_DEV']!
      : dotenv.env['FIREBASE_PROJECT_ID_PROD']!;

  String get firebaseStorageBucket => isDevelopment
      ? dotenv.env['FIREBASE_STORAGE_BUCKET_DEV']!
      : dotenv.env['FIREBASE_STORAGE_BUCKET_PROD']!;

  String get firebaseMessagingSenderId => isDevelopment
      ? dotenv.env['FIREBASE_MESSAGING_SENDER_ID_DEV']!
      : dotenv.env['FIREBASE_MESSAGING_SENDER_ID_PROD']!;

  String get firebaseAppId => isDevelopment
      ? dotenv.env['FIREBASE_APP_ID_DEV']!
      : dotenv.env['FIREBASE_APP_ID_PROD']!;

  String get firebaseMeasurementId => isDevelopment
      ? dotenv.env['FIREBASE_MEASUREMENT_ID_DEV']!
      : dotenv.env['FIREBASE_MEASUREMENT_ID_PROD']!;
}
