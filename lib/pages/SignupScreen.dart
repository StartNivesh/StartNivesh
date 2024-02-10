// import 'package:flutter/material.dart';
//
// class SignupScreen extends StatelessWidget {
//   const SignupScreen({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Hero(
//                   tag: 'logo',
//                   child: Image.asset(
//                     'assets/START.png',
//                     height: 220,
//                     width: 180,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Sign Up',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Name',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           labelText: 'Age',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(15.0),
//                           ),
//                         ),
//                         keyboardType: TextInputType.number,
//                       ),
//                     ),
//                     SizedBox(width: 20),
//                     Expanded(
//                       child: DropdownButtonFormField<String>(
//                         decoration: InputDecoration(
//                           labelText: 'Gender',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(15.0),
//                           ),
//                         ),
//                         value: 'None', // Set default value if needed
//                         items: <String>['None','Male', 'Female', 'Other']
//                             .map((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           );
//                         }).toList(),
//                         onChanged: (newValue) {
//                           // Handle dropdown value change
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Email ID',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15.0),
//                     ),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(15.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Perform sign-up logic here
//                     // For simplicity, let's just print a message for now
//                     print('Sign Up button pressed');
//                   },
//                   child: Text('Sign Up'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Image.asset(
                  'assets/START.png',
                  height: 120,
                  width: 120,
                ),
                SizedBox(height: 20),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    suffixIcon: Icon(Icons.person,size: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Age',
                          prefixIcon: Icon(Icons.calendar_today,size: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          prefixIcon: Icon(Icons.person_outline),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        value: 'None', // Set default value if needed
                        items: <String>['None', 'Male', 'Female', 'Other']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          // Handle dropdown value change
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email ID',
                    suffixIcon: Icon(Icons.email,size: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock,size: 20,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Perform sign-up logic here
                    // For simplicity, let's just print a message for now
                    print('Sign Up button pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16), backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
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
