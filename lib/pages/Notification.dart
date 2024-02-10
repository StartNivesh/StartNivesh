import 'package:flutter/material.dart';
import 'package:start_nivesh/HomeScreen.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
        ),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with the actual number of notifications
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Notification Title $index',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'This is a notification message. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    // Add functionality to delete the notification
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NotificationPage(),
  ));
}
