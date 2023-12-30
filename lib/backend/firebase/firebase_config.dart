import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB5CCegsr_G8CmvLahsOOY_hRAEZbiXKqI",
            authDomain: "santehaggui-1b7f6.firebaseapp.com",
            projectId: "santehaggui-1b7f6",
            storageBucket: "santehaggui-1b7f6.appspot.com",
            messagingSenderId: "106996911565",
            appId: "1:106996911565:web:612c47ee69638c5c694884",
            measurementId: "G-8DRZHCZY84"));
  } else {
    await Firebase.initializeApp();
  }
}
