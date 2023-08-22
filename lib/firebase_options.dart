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
    apiKey: 'AIzaSyDnlX9jPe8VzUeAgZgWC9h3V-MZhAFUGzU',
    appId: '1:615400646758:web:91df2a6af3a5fb038ba5a7',
    messagingSenderId: '615400646758',
    projectId: 'flutter-sns-71254',
    authDomain: 'flutter-sns-71254.firebaseapp.com',
    storageBucket: 'flutter-sns-71254.appspot.com',
    measurementId: 'G-MRZLX2JEYZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzawOK0Esq8OKhpeExp1Oe17AeBeT17DQ',
    appId: '1:615400646758:android:f8128154668a64ab8ba5a7',
    messagingSenderId: '615400646758',
    projectId: 'flutter-sns-71254',
    storageBucket: 'flutter-sns-71254.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXMTbf3wVP7ziksk-0exOhJ7EAwV1RE6M',
    appId: '1:615400646758:ios:24d7cb2db68c116d8ba5a7',
    messagingSenderId: '615400646758',
    projectId: 'flutter-sns-71254',
    storageBucket: 'flutter-sns-71254.appspot.com',
    iosBundleId: 'com.example.flutterSns',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXMTbf3wVP7ziksk-0exOhJ7EAwV1RE6M',
    appId: '1:615400646758:ios:24d7cb2db68c116d8ba5a7',
    messagingSenderId: '615400646758',
    projectId: 'flutter-sns-71254',
    storageBucket: 'flutter-sns-71254.appspot.com',
    iosBundleId: 'com.example.flutterSns',
  );
}
