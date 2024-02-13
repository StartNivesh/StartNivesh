import 'package:flutter/material.dart';
import 'package:start_nivesh/HomeScreen.dart';
import 'package:provider/provider.dart';

class DeletedNotificationIndices with ChangeNotifier {
  Set<int> _indices = {};

  Set<int> get indices => _indices;

  void delete(int index) {
    _indices.add(index);
    notifyListeners();
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DeletedNotificationIndices(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BottomNavigationBarExample()),
              );
            },
          ),
        ),
        body: NotificationList(),
      ),
    );
  }
}

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deletedIndices = Provider.of<DeletedNotificationIndices>(context);
    var notifications = List.generate(10, (index) => 'Notification $index')
        .toList();

    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        // Check if the notification at this index is deleted
        if (deletedIndices.indices.contains(index)) {
          return SizedBox.shrink(); // If deleted, return an empty SizedBox
        }
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
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              title: Text(
                notifications[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'You have a new connection request',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  deletedIndices.delete(index); // Delete notification at this index
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NotificationPage(),
  ));
}
