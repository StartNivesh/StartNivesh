import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:start_nivesh/pages/Authentication/UiHelper.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailcontroller = TextEditingController();


  forgotpassword(String email) async {
    if (email.isEmpty) {
      UiHelper.CustomAlertBox(context, "Enter an email to Reset Password");
    } else if (!isEmailValid(email)) {
      UiHelper.CustomAlertBox(context, "Enter a valid email address");
    } else {
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    }
  }


  // to check if the email is in valid format

  bool isEmailValid(String email) {
    // Regular expression pattern for email validation
    // This pattern checks for the basic structure of an email address
    // It may not catch all edge cases, but it covers most common scenarios
    final RegExp emailRegex =
    RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    // Test if the email matches the regex pattern
    return emailRegex.hasMatch(email);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue, // Set app bar background color
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
          children: [
            Text(
              "Enter your email to reset password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                labelText: "Email",
                suffixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // Add border radius to text field
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                forgotpassword(emailcontroller.text.toString());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
                child: Text("Reset Password"),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue, // Set button text color
                padding: EdgeInsets.symmetric(vertical: 15), // Set button padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Add border radius to button
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
