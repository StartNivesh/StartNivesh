import 'package:flutter/material.dart';

class StartupScreen extends StatefulWidget {
  const StartupScreen({Key? key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.pop(context);
                  // Add logout logic here
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Start Nivesh",
          style: TextStyle(
            color: Color(0xFF161A25),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,

        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon tap
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search icon tap
            },
          ),
          IconButton(
            icon: Icon(Icons.chat),
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
                      "assets/WhatsApp Image 2024-02-10 at 15.34.53_471844f9.jpg",
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*2.3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SLICE",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "A FinTech Company",
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
                      "assets/Zepto_logo.jpg",
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*2.3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ZEPTO",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Zepto is a quick commerce platform and e-grocery company",
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
                    child: Image.network(
                      "assets/Skippy_logo.jpg",
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*2.3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SKIPPI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "",
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
                      "assets/img_2.png",
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*2.3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "StartUp Name",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Founder Name | Caption",
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
                    child: Image.network(
                      "https://via.placeholder.com/300",
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*2.3,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "StartUp Name",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Founder Name | Caption",
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
                    child: Image.network(
                      "https://via.placeholder.com/300",
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*2.3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "StartUp Name",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Founder Name | Caption",
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
                    child: Image.network(
                      "https://via.placeholder.com/300",
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*2.3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "StartUp Name",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Founder Name | Caption",
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
                    child: Image.network(
                      "https://via.placeholder.com/300",
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*2.3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "StartUp Name",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Founder Name | Caption",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),



          // Attractive Startup
        ],
      ),
    );
  }
}




