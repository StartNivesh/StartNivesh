import 'package:flutter/material.dart';
import 'package:start_nivesh/ProfileScreen.dart';
import 'package:start_nivesh/pages/BlogScreen.dart';
import 'package:start_nivesh/pages/StartupScreen.dart';
import 'package:dark_light_button/dark_light_button.dart';

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
        title: Text("Start Nivesh"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Your home screen content here
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                "StartNivesh",
                style: TextStyle(fontSize: 18),
              ),
              arrowColor: Color(0xFF161A25),
              decoration: BoxDecoration(
                color: Color(0xFF161A25),
              ),
              accountEmail: Text("StartNivesh@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                // Handle drawer item tap
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
