import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBBbjACHNyhAADgtXZ0lDuPKf6a-zHnq5w",
            authDomain: "spotin-af2d0.firebaseapp.com",
            projectId: "spotin-af2d0",
            storageBucket: "spotin-af2d0.appspot.com",
            messagingSenderId: "750733301776",
            appId: "1:750733301776:web:2fdf0bee16e896dc435295",
            measurementId: "G-YNLS1L9YK8"));
  } else {
    await Firebase.initializeApp();
  }
}
