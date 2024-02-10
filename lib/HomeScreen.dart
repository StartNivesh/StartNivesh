

import 'package:start_nivesh/ProfileScreen.dart';
import 'package:start_nivesh/pages/BlogScreen.dart';
import 'package:start_nivesh/pages/ChatPage.dart';
import 'package:start_nivesh/pages/DescriptionPage.dart';
import 'package:start_nivesh/pages/LoginScreen.dart';
import 'package:start_nivesh/pages/Notification.dart';
import 'package:flutter/material.dart';
import 'package:start_nivesh/pages/SearchPage.dart';
import 'package:start_nivesh/pages/Setting.dart';
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black, // Change icon color
            ),
            onPressed: () {
              // Handle search icon tap
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.chat,
              color: Colors.black, // Change icon color
            ),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatScreen()));
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessDescriptionPage()));
            // Handle blog item tap
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                child: Image.asset(
                  "assets/rivian.png",
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
                      "RJ Scaringe | California",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessDescriptionPage()));
                  // Handle startup item tap
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                      child: Image.asset(
                        "assets/Hammer_logo.png",
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
                            "Hammer",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Audio tech | Panipat",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessDescriptionPage()));
                  // Handle startup item tap
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                      child: Image.asset(
                        "assets/Licious_Logo.png",
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
                            "Licious",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Food Tech | Bangalore",
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessDescriptionPage()));
            // Handle blog item tap
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                child: Image.asset(
                  "assets/goal_stack.png",
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
                      "Investing in the future",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Author | Date",
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessDescriptionPage()));
            // Handle blog item tap
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                child: Image.asset(
                  "assets/smallsteps.png",
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
                      "Importance of Small Steps",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
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
