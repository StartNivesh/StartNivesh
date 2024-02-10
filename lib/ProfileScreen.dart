// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(10),
        children: [
          // COLUMN THAT WILL CONTAIN THE PROFILE
          const Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg",
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Admin One",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Junior Product Designer")
            ],
          ),
          const SizedBox(height: 25),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  "Complete your profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "(1/5)",
                style: TextStyle(
                  color: Colors.blue,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  height: 7,
                  margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 0 ? Colors.blue : Colors.black12,
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 180,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final card = profileCompletionCards[index];
                return SizedBox(
                  width: 160,
                  child: Card(
                    shadowColor: Colors.black12,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Icon(
                            card.icon,
                            size: 30,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            card.title,
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: Text(card.buttonText),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) =>
              const Padding(padding: EdgeInsets.only(right: 5)),
              itemCount: profileCompletionCards.length,
            ),
          ),
          const SizedBox(height: 35),
          ...List.generate(
            customListTiles.length,
                (index) {
              final tile = customListTiles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.black12,
                  child: ListTile(
                    leading: Icon(tile.icon),
                    title: Text(tile.title),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ),
              );
            },
          )
        ],
      ),

    );
  }
}

class ProfileCompletionCard {
  final String title;
  final String buttonText;
  final IconData icon;
  ProfileCompletionCard({
    required this.title,
    required this.buttonText,
    required this.icon,
  });
}

List<ProfileCompletionCard> profileCompletionCards = [
  ProfileCompletionCard(
    title: "Set Your Profile Details",
    icon: CupertinoIcons.person_circle,
    buttonText: "Continue",
  ),
  ProfileCompletionCard(
    title: "Upload your resume",
    icon: CupertinoIcons.doc,
    buttonText: "Upload",
  ),
  ProfileCompletionCard(
    title: "Add your skills",
    icon: CupertinoIcons.square_list,
    buttonText: "Add",
  ),
];

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({
    required this.icon,
    required this.title,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Icons.insights,
    title: "Activity",
  ),
  CustomListTile(
    icon: Icons.location_on_outlined,
    title: "Location",
  ),
  CustomListTile(
    title: "Notifications",
    icon: CupertinoIcons.bell,
  ),
  CustomListTile(
    title: "Logout",
    icon: CupertinoIcons.arrow_right_arrow_left,
  ),
];
