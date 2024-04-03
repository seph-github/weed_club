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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDiTPPz4ElrdI4lJH0DiHTxevxcNW4Ldjo',
    appId: '1:997071369157:web:e7352868b968e7d4fed1ac',
    messagingSenderId: '997071369157',
    projectId: 'weed-club-db',
    authDomain: 'weed-club-db.firebaseapp.com',
    storageBucket: 'weed-club-db.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsK2nH3MFlPtceFEDy89BJklvx3U1I3ks',
    appId: '1:997071369157:android:e75308097a243cb8fed1ac',
    messagingSenderId: '997071369157',
    projectId: 'weed-club-db',
    storageBucket: 'weed-club-db.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGaRR0GhWd9FxGQc5-wAYmzMA8mSj0KS0',
    appId: '1:997071369157:ios:93d640c997449eeafed1ac',
    messagingSenderId: '997071369157',
    projectId: 'weed-club-db',
    storageBucket: 'weed-club-db.appspot.com',
    iosBundleId: 'com.example.weedClub',
  );
}
