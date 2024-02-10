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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarExample())); // Navigate back when the arrow is pressed
          },
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 16),
            fillColor: Colors.grey.shade200,
            filled: true,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        children: [
          _buildSearchResultItem('Username1'),
          _buildSearchResultItem('Username2'),
          _buildSearchResultItem('Username3'),
          _buildSearchResultItem('Username4'),
          _buildSearchResultItem('Username5'),
          _buildSearchResultItem('Username6'),
          _buildSearchResultItem('Username7'),
          _buildSearchResultItem('Username8'),
          _buildSearchResultItem('Username9'),
          _buildSearchResultItem('Username10'),
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
