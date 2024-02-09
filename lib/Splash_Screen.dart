import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:start_nivesh/RoleSelection.dart';
import 'package:start_nivesh/pages/On_Boarding_Screen.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 7),
          () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoarding())
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to Start Nivesh',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.red,
                fontFamily: 'Pacifico', // Custom font
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            ColorizeAnimatedTextKit(
              onTap: () {
                print("Tap Event");
              },
              text: ['AWESOME', 'OPTIMISTIC', 'DIFFERENT'],
              textStyle: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Horizon', // Custom font
                fontWeight: FontWeight.bold,
              ),
              colors: [
                Colors.blue,
                Colors.white,
                Colors.black, // Second color
              ],
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.0),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
