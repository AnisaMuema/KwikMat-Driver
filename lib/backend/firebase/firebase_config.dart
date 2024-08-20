import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAYuFEgZN70agVN3IaZgJhnI3-tjsaJLbo",
            authDomain: "kwik-mat-nfpzbv.firebaseapp.com",
            projectId: "kwik-mat-nfpzbv",
            storageBucket: "kwik-mat-nfpzbv.appspot.com",
            messagingSenderId: "292022621676",
            appId: "1:292022621676:web:1b684ccf6bb54bdc2d1cc9"));
  } else {
    await Firebase.initializeApp();
  }
}
