// // import 'package:flutter/material.dart';
// // import 'package:start_nivesh/ProfileScreen.dart';
// // import 'package:start_nivesh/pages/BlogScreen.dart';
// // import 'package:start_nivesh/pages/StartupScreen.dart';
// // import 'package:dark_light_button/dark_light_button.dart';
// //
// //
// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({Key? key});
// //
// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }
// //
// // class _HomeScreenState extends State<HomeScreen> {
// //   int _currentIndex = 0;
// //   final List<Widget> _screens = [
// //     HomeScreen(),
// //     StartupScreen(),
// //     BlogScreen(),
// //     ProfileScreen()
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       drawer: Drawer(
// //         child: Column(
// //           children: [
// //             const UserAccountsDrawerHeader(
// //               accountName: Text(
// //                 "StartNivesh",
// //                 style: TextStyle(fontSize: 18),
// //               ),
// //
// //               decoration: BoxDecoration(
// //                 color: Color(0xFF161A25),
// //               ),
// //               accountEmail: Text("StartNivesh@gmail.com"),
// //               currentAccountPicture: CircleAvatar(
// //                 backgroundImage: NetworkImage(
// //                     "https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg"),
// //               ),
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.settings),
// //               title: Text("Settings"),
// //               onTap: () {
// //                 // Handle drawer item tap
// //                 Navigator.pop(context);
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //       appBar: AppBar(
// //         title: Text(
// //           "Start Nivesh",
// //           style: TextStyle(
// //             color: Color(0xFF161A25),
// //             fontSize: 24,
// //             fontWeight: FontWeight.bold,
// //           ),
// //         ),
// //         backgroundColor: Colors.transparent,
// //         centerTitle: true,
// //         elevation: 0.0,
// //         actions: [
// //           IconButton(
// //             icon: Icon(Icons.notifications),
// //             onPressed: () {
// //             },
// //           ),
// //           IconButton(
// //             icon: Icon(Icons.search),
// //             onPressed: () {
// //               // Handle search icon tap
// //             },
// //           ),
// //           DarlightButton(
// //               type: Darlights.DarlightThree,
// //               onChange: (ThemeMode theme) {
// //
// //               },
// //           ),
// //           SizedBox(width: 10,),
// //
// //         ],
// //       ),
// //       body: ListView(
// //         padding: EdgeInsets.all(16),
// //         children: [
// //           // Attractive Blog Card
// //           Card(
// //             elevation: 4,
// //             margin: EdgeInsets.only(bottom: 16),
// //             shape: RoundedRectangleBorder(
// //               borderRadius: BorderRadius.circular(15.0),
// //             ),
// //             child: InkWell(
// //               onTap: () {
// //                 // Handle blog item tap
// //               },
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   ClipRRect(
// //                     borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
// //                     child: Image.network(
// //                       "https://via.placeholder.com/300",
// //                       height: 150,
// //                       width: double.infinity,
// //                       fit: BoxFit.cover,
// //                     ),
// //                   ),
// //                   const Padding(
// //                     padding: EdgeInsets.all(16),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Text(
// //                           "Blog Title",
// //                           style: TextStyle(
// //                             fontSize: 18,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                         SizedBox(height: 8),
// //                         Text(
// //                           "Author Name | Date",
// //                           style: TextStyle(color: Colors.grey),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           // Startups Row
// //           Row(
// //             children: [
// //               // Startup Card 1
// //               Expanded(
// //                 child: Card(
// //                   elevation: 4,
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(15.0),
// //                   ),
// //                   child: InkWell(
// //                     onTap: () {
// //                       // Handle startup item tap
// //                     },
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         ClipRRect(
// //                           borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
// //                           child: Image.network(
// //                             "https://via.placeholder.com/150",
// //                             height: 100,
// //                             width: double.infinity,
// //                             fit: BoxFit.cover,
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsets.all(12),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 "Startup Name 1",
// //                                 style: TextStyle(
// //                                   fontSize: 14,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                               ),
// //                               SizedBox(height: 4),
// //                               Text(
// //                                 "Category | Location",
// //                                 style: TextStyle(color: Colors.grey, fontSize: 12),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               SizedBox(width: 16),
// //               // Startup Card 2
// //               Expanded(
// //                 child: Card(
// //                   elevation: 4,
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(15.0),
// //                   ),
// //                   child: InkWell(
// //                     onTap: () {
// //                       // Handle startup item tap
// //                     },
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         ClipRRect(
// //                           borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
// //                           child: Image.network(
// //                             "https://via.placeholder.com/150",
// //                             height: 100,
// //                             width: double.infinity,
// //                             fit: BoxFit.cover,
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: EdgeInsets.all(12),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 "Startup Name 2",
// //                                 style: TextStyle(
// //                                   fontSize: 14,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                               ),
// //                               SizedBox(height: 4),
// //                               Text(
// //                                 "Category | Location",
// //                                 style: TextStyle(color: Colors.grey, fontSize: 12),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //           Card(
// //             elevation: 4,
// //             margin: EdgeInsets.only(bottom: 16,top: 16),
// //             shape: RoundedRectangleBorder(
// //               borderRadius: BorderRadius.circular(15.0),
// //             ),
// //             child: InkWell(
// //               onTap: () {
// //                 // Handle blog item tap
// //               },
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   ClipRRect(
// //                     borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
// //                     child: Image.network(
// //                       "https://via.placeholder.com/300",
// //                       height: 150,
// //                       width: double.infinity,
// //                       fit: BoxFit.cover,
// //                     ),
// //                   ),
// //                   Padding(
// //                     padding: EdgeInsets.all(16),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Text(
// //                           "Blog Title",
// //                           style: TextStyle(
// //                             fontSize: 18,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                         SizedBox(height: 8),
// //                         Text(
// //                           "Author Name | Date",
// //                           style: TextStyle(color: Colors.grey),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           Card(
// //             elevation: 4,
// //             margin: EdgeInsets.only(bottom: 16,top: 16),
// //             shape: RoundedRectangleBorder(
// //               borderRadius: BorderRadius.circular(15.0),
// //             ),
// //             child: InkWell(
// //               onTap: () {
// //                 // Handle blog item tap
// //               },
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   ClipRRect(
// //                     borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
// //                     child: Image.network(
// //                       "https://via.placeholder.com/300",
// //                       height: 150,
// //                       width: double.infinity,
// //                       fit: BoxFit.cover,
// //                     ),
// //                   ),
// //                   Padding(
// //                     padding: EdgeInsets.all(16),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Text(
// //                           "Blog Title",
// //                           style: TextStyle(
// //                             fontSize: 18,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                         SizedBox(height: 8),
// //                         Text(
// //                           "Author Name | Date",
// //                           style: TextStyle(color: Colors.grey),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //           // Attractive Startup
// //         ],
// //       ),
// //       // bottomNavigationBar: BottomNavigationBar(
// //       //   currentIndex: _currentIndex,
// //       //   onTap: (index) {
// //       //     setState(() {
// //       //       _currentIndex = index;
// //       //
// //       //     });
// //       // // Navigate to the selected screen based on t
// //       //
// //       //
// //       //
// //       //
// //       //
// //       //   },
// //       //   backgroundColor: Colors.blue,
// //       //   selectedItemColor: Colors.black,
// //       //   unselectedItemColor: Colors.grey,
// //       //   items: [
// //       //     BottomNavigationBarItem(
// //       //       icon: Icon(Icons.home),
// //       //       label: 'Home',
// //       //     ),
// //       //     BottomNavigationBarItem(
// //       //       icon: Icon(Icons.rocket),
// //       //       label: 'Startup',
// //       //     ),
// //       //     BottomNavigationBarItem(
// //       //       icon: Icon(Icons.article),
// //       //       label: 'Blog',
// //       //     ),
// //       //     BottomNavigationBarItem(
// //       //       icon: Icon(Icons.person),
// //       //       label: 'Profile',
// //       //     ),
// //       //   ],
// //       // ),
// //
// //     );
// //
// //   }
// // }
// //
// //
// //
// //
// //
// //
// // void main() => runApp(const BottomNavigationBarExampleApp());
// //
// // class BottomNavigationBarExampleApp extends StatelessWidget {
// //   const BottomNavigationBarExampleApp({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: BottomNavigationBarExample(),
// //     );
// //   }
// // }
// //
// // class BottomNavigationBarExample extends StatefulWidget {
// //   const BottomNavigationBarExample({Key? key}) : super(key: key);
// //
// //   @override
// //   State<BottomNavigationBarExample> createState() =>
// //       _BottomNavigationBarExampleState();
// // }
// //
// // class _BottomNavigationBarExampleState
// //     extends State<BottomNavigationBarExample> {
// //   int _selectedIndex = 0;
// //
// //   static const List<Widget> _screens = <Widget>[
// //     HomeScreen(),
// //     StartupScreen(),
// //     BlogScreen(),
// //     ProfileScreen(),
// //
// //
// //
// //   ];
// //
// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: IndexedStack(
// //         index: _selectedIndex,
// //         children: _screens,
// //       ),
// //       // bottomNavigationBar: BottomNavigationBar(
// //       //
// //       //   items: const <BottomNavigationBarItem>[
// //       //     BottomNavigationBarItem(
// //       //
// //       //       icon: Icon(Icons.home,color: Colors.black,),
// //       //       label: 'Home',
// //       //
// //       //
// //       //     ),
// //       //     BottomNavigationBarItem(
// //       //       icon: Icon(Icons.rocket,color: Colors.black,),
// //       //       label: 'Startup',
// //       //
// //       //     ),
// //       //     BottomNavigationBarItem(
// //       //       icon: Icon(Icons.article,color: Colors.black),
// //       //       label: 'Blog',
// //       //     ),
// //       //     BottomNavigationBarItem(
// //       //       icon: Icon(Icons.person,color: Colors.black),
// //       //       label: 'Profile',
// //       //     ),
// //       //   ],
// //       //   currentIndex: _selectedIndex,
// //       //   selectedItemColor: Colors.black,
// //       //   onTap: _onItemTapped,
// //       // ),
// //       //   bottomNavigationBar: BottomNavigationBar(
// //       //     backgroundColor: Colors.white,
// //       //     elevation: 10,
// //       //     selectedFontSize: 14,
// //       //     unselectedFontSize: 12,
// //       //     selectedItemColor: Colors.black,
// //       //     unselectedItemColor: Colors.grey,
// //       //     type: BottomNavigationBarType.fixed,
// //       //     currentIndex: _selectedIndex,
// //       //     onTap: _onItemTapped,
// //       //     items: <BottomNavigationBarItem>[
// //       //       BottomNavigationBarItem(
// //       //         icon: Icon(Icons.home),
// //       //         label: 'Home',
// //       //       ),
// //       //       BottomNavigationBarItem(
// //       //         icon: Icon(Icons.rocket),
// //       //         label: 'Startup',
// //       //       ),
// //       //       BottomNavigationBarItem(
// //       //         icon: Icon(Icons.article),
// //       //         label: 'Blog',
// //       //       ),
// //       //       BottomNavigationBarItem(
// //       //         icon: Icon(Icons.person),
// //       //         label: 'Profile',
// //       //       ),
// //       //     ],
// //       //   )
// //
// //       bottomNavigationBar: BottomAppBar(
// //         shape: CircularNotchedRectangle(),
// //         notchMargin: 8.0,
// //         color: Colors.transparent,
// //         elevation: 0,
// //         child: Container(
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.vertical(top: Radius.circular(26),bottom:Radius.circular(26) ),
// //             color: Colors.white,
// //             boxShadow: [
// //               BoxShadow(
// //                 color: Colors.black.withOpacity(0.2),
// //                 blurRadius: 6,
// //                 offset: Offset(0, -3),
// //               ),
// //             ],
// //           ),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceAround,
// //             children: <Widget>[
// //               IconButton(
// //                 icon: Icon(Icons.home, size: 28),
// //                 onPressed: () => _onItemTapped(0),
// //                 color: _selectedIndex == 0 ? Colors.lightBlue : Colors.grey,
// //               ),
// //               IconButton(
// //                 icon: Icon(Icons.rocket, size: 28),
// //                 onPressed: () => _onItemTapped(1),
// //                 color: _selectedIndex == 1 ? Colors.lightBlue : Colors.grey,
// //               ),
// //               SizedBox(width: 64), // Adds space in the middle for the FAB
// //               IconButton(
// //                 icon: Icon(Icons.article, size: 28),
// //                 onPressed: () => _onItemTapped(2),
// //                 color: _selectedIndex == 2 ? Colors.lightBlue : Colors.grey,
// //               ),
// //               IconButton(
// //                 icon: Icon(Icons.person, size: 28),
// //                 onPressed: () => _onItemTapped(3),
// //                 color: _selectedIndex == 3 ? Colors.lightBlue : Colors.grey,
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {},
// //         backgroundColor: Colors.lightBlue,
// //         child: Icon(Icons.add),
// //       ),
// //       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// //
// //
// //     );
// //   }
// // }
// //
// //
// //
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:start_nivesh/pages/BlogScreen.dart';
// import 'package:start_nivesh/pages/StartupScreen.dart';
//
// import 'ProfileScreen.dart';
//
//
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Start Nivesh"),
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(16),
//         children: [
//           // Your home screen content here
//         ],
//       ),
//       drawer: Drawer(
//         // Your drawer code here
//       ),
//     );
//   }
// }
//
// class BottomNavigationBarExample extends StatefulWidget {
//   const BottomNavigationBarExample({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavigationBarExample> createState() =>
//       _BottomNavigationBarExampleState();
// }
//
// class _BottomNavigationBarExampleState
//     extends State<BottomNavigationBarExample> {
//   int _selectedIndex = 0;
//
//   static const List<Widget> _screens = <Widget>[
//     HomeScreen(),
//     StartupScreen(),
//     BlogScreen(),
//     ProfileScreen(),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: BottomAppBar(
//         // Your bottom navigation bar code here
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Colors.lightBlue,
//         child: Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:start_nivesh/ProfileScreen.dart';
import 'package:start_nivesh/pages/BlogScreen.dart';
import 'package:start_nivesh/pages/LoginScreen.dart';
import 'package:start_nivesh/pages/StartupScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavigationBarExample(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Solid background color

        title: Text(
          "Start Nivesh",
          style: TextStyle(
            color: Color(0xFF161A25),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto', // Custom font family
          ),
        ),
        centerTitle: true,
        elevation: 0.0, // No shadow
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black, // Change icon color
            ),
            onPressed: () {
              // Handle notification icon tap
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black, // Change icon color
            ),
            onPressed: () {
              // Handle search icon tap
            },
          ),
          IconButton(
            icon: Icon(
              Icons.chat,
              color: Colors.black, // Change icon color
            ),
            onPressed: () {
              // Handle chat icon tap
            },
          ),
        ],
      ),

        body: ListView(
        padding: EdgeInsets.all(16),
        children: [
        // Attractive Blog Card
        Card(
        elevation: 4,
        margin: EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            // Handle blog item tap
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                child: Image.asset(
                  "assets/img.png",
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rivian",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "RJ Scaringe | ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // Startups Row
      Row(
        children: [
          // Startup Card 1
          Expanded(
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                onTap: () {
                  // Handle startup item tap
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                      child: Image.network(
                        "https://via.placeholder.com/150",
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Startup Name 1",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Category | Location",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          // Startup Card 2
          Expanded(
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                onTap: () {
                  // Handle startup item tap
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                      child: Image.network(
                        "https://via.placeholder.com/150",
                        height: 100,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Startup Name 2",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Category | Location",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      Card(
        elevation: 4,
        margin: EdgeInsets.only(bottom: 16,top: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            // Handle blog item tap
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                child: Image.network(
                  "https://via.placeholder.com/300",
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Blog Title",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Author Name | Date",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
        elevation: 4,
        margin: EdgeInsets.only(bottom: 16,top: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            // Handle blog item tap
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                child: Image.network(
                  "https://via.placeholder.com/300",
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Blog Title",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Author Name | Date",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
      ),



      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 200,
                color: Color(0xFF161A25),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg"),
                        radius: 50,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "StartNivesh",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "StartNivesh@gmail.com",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.black,
                ),
                title: Text(
                  "Dashboard",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to dashboard screen
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to profile screen
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.history,
                  color: Colors.black,
                ),
                title: Text(
                  "Transaction History",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to transaction history screen
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.payment,
                  color: Colors.black,
                ),
                title: Text(
                  "Payment Methods",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to payment methods screen
                },
              ),
              Divider(
                color: Colors.black,
                thickness: 0.5,
                height: 30,
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to settings screen
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.black,
                ),
                title: Text(
                  "Help & Feedback",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to help & feedback screen
                },
              ),
              Divider(
                color: Colors.black,
                thickness: 0.5,
                height: 30,
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                onTap: () {
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                  // Add logout logic here
                },
              ),
            ],
          ),
        ),
      )

      ,
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    StartupScreen(),
    BlogScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(26),
              bottom: Radius.circular(26),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: Offset(0, -3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home, size: 28),
                onPressed: () => _onItemTapped(0),
                color: _selectedIndex == 0 ? Colors.lightBlue : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.rocket, size: 28),
                onPressed: () => _onItemTapped(1),
                color: _selectedIndex == 1 ? Colors.lightBlue : Colors.grey,
              ),
              SizedBox(width: 64), // Adds space in the middle for the FAB
              IconButton(
                icon: Icon(Icons.article, size: 28),
                onPressed: () => _onItemTapped(2),
                color: _selectedIndex == 2 ? Colors.lightBlue : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.person, size: 28),
                onPressed: () => _onItemTapped(3),
                color: _selectedIndex == 3 ? Colors.lightBlue : Colors.grey,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
