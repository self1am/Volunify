import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDvEbk0lnIsCfqm7fNMjgC0R85SSWae-oQ",
            authDomain: "volunify-dbugtx.firebaseapp.com",
            projectId: "volunify-dbugtx",
            storageBucket: "volunify-dbugtx.appspot.com",
            messagingSenderId: "255079838572",
            appId: "1:255079838572:web:7a3507445cb3c38ab5f949"));
  } else {
    await Firebase.initializeApp();
  }
}
