import 'package:flutter/material.dart';
import 'package:start_nivesh/HomeScreen.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey), // Add back arrow icon
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarExample())); // Navigate back when the arrow is pressed
          },
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20), // Adjust border radius here
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16), // Adjust padding as needed
            fillColor: Colors.grey.shade200,
            filled: true,
          ),
          style: TextStyle(color: Colors.black), // Change text color here
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        children: [
          _buildSearchResultItem('Innovize Solutions'),
          _buildSearchResultItem('GrowthGenius Ventures'),
          _buildSearchResultItem('LaunchPad Innovations'),
          _buildSearchResultItem('Prodigy Enterprises'),
          _buildSearchResultItem('Nexus Innovations Co.'),
          _buildSearchResultItem('Apex Ventures Group'),
          _buildSearchResultItem('Catalyst Creations'),
          _buildSearchResultItem('Visionary Ventures Inc.'),
          _buildSearchResultItem('Momentum Labs'),
          _buildSearchResultItem('Pinnacle Ventures Ltd.'),
        ],
      ),
    );
  }

  Widget _buildSearchResultItem(String username) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Icon(Icons.person, color: Colors.grey),
      ),
      title: Text(username),
      onTap: () {
        // Handle tapping on a search result
      },
    );
  }
}
