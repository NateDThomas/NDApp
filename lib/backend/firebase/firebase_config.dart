import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB4DRyOSSmcFL9LI9DcuyE1Ulcomn7Rg2U",
            authDomain: "nd-app-a3ae0.firebaseapp.com",
            projectId: "nd-app-a3ae0",
            storageBucket: "nd-app-a3ae0.appspot.com",
            messagingSenderId: "659240959731",
            appId: "1:659240959731:web:7a8260f27c0a0bec420186",
            measurementId: "G-F27K3R0NQ8"));
  } else {
    await Firebase.initializeApp();
  }
}
