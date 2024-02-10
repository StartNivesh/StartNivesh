
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:start_nivesh/HomeScreen.dart';
import 'package:start_nivesh/pages/Authentication/ForgetPassword.dart';
import 'package:start_nivesh/pages/Authentication/PhoneAuth.dart';
import 'package:start_nivesh/pages/Authentication/UiHelper.dart';

class LoginScreen extends StatelessWidget {
  BuildContext? get context => null;

  Future<void> _handleGoogleSignIn(BuildContext context) async {

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const BottomNavigationBarExample()),
    ); // Replace '/home' with your home screen route
  }

  Future<void> _handleAppleSignIn(BuildContext context) async {

  }

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  //if the email feild is empty
  //form validation

  emptyLogin(String email , String password) {
    if (email.isEmpty) {
      UiHelper.CustomAlertBox(context!, "Enter a valid email");
    } else if (password.isEmpty) {
      UiHelper.CustomAlertBox(context!, "Enter Password");
    } else {
      // Perform login logic here using email and password
      // For simplicity, let's just print the email and password for now
      print('Email: $email');
      print('Password: $password');

      // Reset text fields after successful login
      emailcontroller.clear();
      passwordcontroller.clear();

      // Navigate to the home screen
      Navigator.pushReplacement(
        context!,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 80),
                Image.asset(
                  'assets/START.png',
                  height: 120,
                  width: 120,
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username or Email',
                    suffixIcon: Icon(Icons.person, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {

                      // Implement Forgot Password logic
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarExample()));


                    //if the user has not entered either email or password
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));



                    // For simplicity, let's just print a message for now
                    print('Login button pressed');
                  },
                  style: TextButton.styleFrom(

                    padding: EdgeInsets.symmetric(vertical: 16), backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 3,
                    shadowColor: Colors.blue.withOpacity(0.3),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Implement Forgot Password logic
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Implement Forgot Password logic
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PhoneAuth()));
                  },
                  child: Text(
                    'Sign-in With Phone Number',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () => _handleGoogleSignIn(context),
                      icon: Image.asset(
                        'assets/google_logo.png',
                        height: 24,
                        width: 18,
                      ),
                      label: Text('Google'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red, side: BorderSide(color: Colors.red),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      ),
                    ),
                    SizedBox(width: 20),
                    OutlinedButton.icon(
                      onPressed: () => _handleAppleSignIn(context),
                      icon: Image.asset(
                        'assets/apple_logo.png',
                        height: 24,
                        width: 18,
                      ),
                      label: Text('Apple'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black, side: BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
