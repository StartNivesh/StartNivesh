import 'dart:async';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:start_nivesh/ProfileScreen.dart';
import 'package:start_nivesh/RoleSelection.dart';
import 'package:start_nivesh/Splash_Screen.dart';
import 'package:start_nivesh/pages/BlogScreen.dart';
import 'package:start_nivesh/pages/LoginScreen.dart';
import 'package:start_nivesh/pages/On_Boarding_Screen.dart';
import 'package:start_nivesh/pages/SignupScreen.dart';
import 'package:start_nivesh/pages/StartupScreen.dart';


import 'HomeScreen.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


//None hatana h SignupScreen se


