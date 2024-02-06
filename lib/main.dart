import 'dart:async';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:start_nivesh/RoleSelection.dart';
import 'package:start_nivesh/Splash_Screen.dart';
import 'package:start_nivesh/pages/LoginPages.dart';
import 'package:start_nivesh/pages/On_Boarding_Screen.dart';



import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



