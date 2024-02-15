import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:start_nivesh/ProfileScreen.dart';
import 'package:start_nivesh/RoleSelection.dart';
import 'package:start_nivesh/Splash_Screen.dart';
import 'package:start_nivesh/pages/BlogScreen.dart';
import 'package:start_nivesh/pages/LoginOrSignup.dart';
import 'package:start_nivesh/pages/LoginScreen.dart';
import 'package:start_nivesh/pages/Notification.dart';
import 'package:start_nivesh/pages/On_Boarding_Screen.dart';
import 'package:start_nivesh/pages/SearchPage.dart';
import 'package:start_nivesh/pages/Setting.dart';
import 'package:start_nivesh/pages/SignupScreen.dart';
import 'package:start_nivesh/pages/StartupScreen.dart';



import 'HomeScreen.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid?await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCCp3IlT8PW4rpktYQtlCX9D0Zc3xgb6Js",
      appId: "1:163770713733:android:5b2d00e7b8379f454f0bec",
      messagingSenderId: "163770713733",
      projectId: "startnivesh-bfab1",
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
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


//Firebase hogya



