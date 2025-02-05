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
    apiKey: 'AIzaSyA_d-Oj1_S-yv9ksk2v2bBG2UeRYqWxvqk',
    appId: '1:860664457223:web:74a0cb6fb3ef3877b1e2a2',
    messagingSenderId: '860664457223',
    projectId: 'chatapp-dff00',
    authDomain: 'chatapp-dff00.firebaseapp.com',
    storageBucket: 'chatapp-dff00.appspot.com',
    measurementId: 'G-0Z87HD8Y83',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD0lcYyIsb1-P7lwYM9_YtW3AyzqDYujhM',
    appId: '1:860664457223:android:834254da68b0e822b1e2a2',
    messagingSenderId: '860664457223',
    projectId: 'chatapp-dff00',
    storageBucket: 'chatapp-dff00.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyVb1L-Mj5uAoWTGq52Z_PxQEpWZnlVsc',
    appId: '1:860664457223:ios:7ca5a787fc5edf9bb1e2a2',
    messagingSenderId: '860664457223',
    projectId: 'chatapp-dff00',
    storageBucket: 'chatapp-dff00.appspot.com',
    iosBundleId: 'com.example.sadioStore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAyVb1L-Mj5uAoWTGq52Z_PxQEpWZnlVsc',
    appId: '1:860664457223:ios:7ca5a787fc5edf9bb1e2a2',
    messagingSenderId: '860664457223',
    projectId: 'chatapp-dff00',
    storageBucket: 'chatapp-dff00.appspot.com',
    iosBundleId: 'com.example.sadioStore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB3-oP_0mDcq5I29O0Jqva0nWZ_qfWcET4',
    appId: '1:860664457223:web:932f780f6f02e303b1e2a2',
    messagingSenderId: '860664457223',
    projectId: 'chatapp-dff00',
    authDomain: 'chatapp-dff00.firebaseapp.com',
    storageBucket: 'chatapp-dff00.appspot.com',
    measurementId: 'G-RK19DGWMBR',
  );
}
