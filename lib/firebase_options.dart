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
    apiKey: 'AIzaSyBwSYnOndeEeLqroDjczrhWlTKK0bbjyek',
    appId: '1:1013308186482:web:4e45eb48a33874e87b47eb',
    messagingSenderId: '1013308186482',
    projectId: 'devsnortequiz',
    authDomain: 'devsnortequiz.firebaseapp.com',
    storageBucket: 'devsnortequiz.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQ8xGuQHschvIFX5ybqobfMmWCy8BZ1a4',
    appId: '1:1013308186482:android:eb7a4018df027e987b47eb',
    messagingSenderId: '1013308186482',
    projectId: 'devsnortequiz',
    storageBucket: 'devsnortequiz.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCqgWUHDh9JJW5RvLT3fQNG1t4zjLf2qHs',
    appId: '1:1013308186482:ios:88200c29a217764d7b47eb',
    messagingSenderId: '1013308186482',
    projectId: 'devsnortequiz',
    storageBucket: 'devsnortequiz.appspot.com',
    iosBundleId: 'br.com.devsnorte.devsNorteQuiz',
  );
}
