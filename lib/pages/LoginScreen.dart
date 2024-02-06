import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Future<void> _handleGoogleSignIn(BuildContext context) async {
    // Implement Google Sign-In logic here
  }

  Future<void> _handleAppleSignIn(BuildContext context) async {
    // Implement Apple Sign-In logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'assets/START.png',
                    height: 220,
                    width: 180,
                  ),
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
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
                  child: Row(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
