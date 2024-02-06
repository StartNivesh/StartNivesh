import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class LoginPage extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _handleGoogleSignIn(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        print('Google sign-in successful: ${googleUser.displayName}');
        // Navigate to the next screen or perform other actions upon successful sign-in
      } else {
        print('Google sign-in canceled');
      }
    } catch (error) {
      print('Google sign-in failed: $error');
    }
  }

  Future<void> _handleAppleSignIn(BuildContext context) async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [AppleIDAuthorizationScopes.email, AppleIDAuthorizationScopes.fullName],
      );
      print('Apple sign-in successful: $credential');
      // Navigate to the next screen or perform other actions upon successful sign-in
    } catch (error) {
      print('Apple sign-in failed: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/START.png',
                height: 150,
                width: 150,
              ),
              SizedBox(height: 20),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username or Email id',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Perform login logic here
                  // For simplicity, let's just print a message for now
                  print('Login button pressed');
                },
                child: Text('Login'),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () => _handleGoogleSignIn(context),
                          icon: Image.asset(
                            'assets/google_logo.png',
                            height: 24,
                            width: 18,
                          ),
                          label: Text('Sign in with Google'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton.icon(
                          onPressed: () => _handleAppleSignIn(context),
                          icon: Image.asset(
                            'assets/apple_logo.png',
                            height: 24,
                            width: 18,
                          ),
                          label: Text('Sign in with Apple'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 8,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        ElevatedButton.icon(
                          onPressed: () => _handleAppleSignIn(context),
                          icon: Image.asset(
                            'assets/threads.png',
                            height: 24,
                            width: 18,
                          ),
                          label: Text('Sign in with Threads'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton.icon(
                          onPressed: () => _handleGoogleSignIn(context),
                          icon: Image.asset(
                            'assets/x_logo.png',
                            height: 24,
                            width: 18,
                          ),
                          label: Text('Sign in with x      '),
                        ),

                      ],
                    ),




                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
