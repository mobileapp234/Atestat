// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCH93NdCshdMnVZaCMtesQ2qmAyZz_7_iI',
    appId: '1:539042013250:web:2f75f8ed9cccc558288ddb',
    messagingSenderId: '539042013250',
    projectId: 'aplicatie-c564b',
    authDomain: 'aplicatie-c564b.firebaseapp.com',
    storageBucket: 'aplicatie-c564b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAbtT2VqlW894gYMlcGXmKXyZ4JQH7Cebc',
    appId: '1:539042013250:android:a7bd0a0d7e5f9789288ddb',
    messagingSenderId: '539042013250',
    projectId: 'aplicatie-c564b',
    storageBucket: 'aplicatie-c564b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEFT24ebGNZVT1qjgizN1POaONXq6R7Ms',
    appId: '1:539042013250:ios:aaa401b5ce12d848288ddb',
    messagingSenderId: '539042013250',
    projectId: 'aplicatie-c564b',
    storageBucket: 'aplicatie-c564b.appspot.com',
    iosClientId:
        '539042013250-nhv1hh712rchdrqkb38isb9na0o8p5nk.apps.googleusercontent.com',
    iosBundleId: 'com.example.mobileApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEFT24ebGNZVT1qjgizN1POaONXq6R7Ms',
    appId: '1:539042013250:ios:95a6becd4c6b97b4288ddb',
    messagingSenderId: '539042013250',
    projectId: 'aplicatie-c564b',
    storageBucket: 'aplicatie-c564b.appspot.com',
    iosClientId:
        '539042013250-jj22m64jp2br3m2q6pjh99i0miurb366.apps.googleusercontent.com',
    iosBundleId: 'com.example.mobileApp.RunnerTests',
  );
}
