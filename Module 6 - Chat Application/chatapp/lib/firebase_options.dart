// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCMyFo2nK_68sn2HZwsX35_AKLzdlZ9SYo',
    appId: '1:130163453508:web:4814135ce2bfa11d1c1611',
    messagingSenderId: '130163453508',
    projectId: 'chat-application-6f376',
    authDomain: 'chat-application-6f376.firebaseapp.com',
    storageBucket: 'chat-application-6f376.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAr8ZySW9XZZt8wuCZopIggLt-9_87ahRY',
    appId: '1:130163453508:android:cad2197c1faed6da1c1611',
    messagingSenderId: '130163453508',
    projectId: 'chat-application-6f376',
    storageBucket: 'chat-application-6f376.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOO5SPPk8kGndzrFIM12gMOyjye_iVNWE',
    appId: '1:130163453508:ios:122c65e9cc49da871c1611',
    messagingSenderId: '130163453508',
    projectId: 'chat-application-6f376',
    storageBucket: 'chat-application-6f376.firebasestorage.app',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBOO5SPPk8kGndzrFIM12gMOyjye_iVNWE',
    appId: '1:130163453508:ios:122c65e9cc49da871c1611',
    messagingSenderId: '130163453508',
    projectId: 'chat-application-6f376',
    storageBucket: 'chat-application-6f376.firebasestorage.app',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCMyFo2nK_68sn2HZwsX35_AKLzdlZ9SYo',
    appId: '1:130163453508:web:0412e1ce06f8087d1c1611',
    messagingSenderId: '130163453508',
    projectId: 'chat-application-6f376',
    authDomain: 'chat-application-6f376.firebaseapp.com',
    storageBucket: 'chat-application-6f376.firebasestorage.app',
  );
}
