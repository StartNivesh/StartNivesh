import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';




import 'HomeScreen.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid?await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBhcOup5ijlTUFg2bCYd19aOdvqmpbtUp0",
      appId: "1:794401066985:android:122e3727d8b6d24ad2c578",
      messagingSenderId: "794401066985",
      projectId: "flutter-firebase-demo-ebefa",
    ),
  )
      :
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}


//Firebase hogya



