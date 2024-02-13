import 'package:flutter/material.dart';
import 'package:start_nivesh/HomeScreen.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Map<String, String>> _searchResults = [
    {'name': 'Innovize Solutions', 'imageUrl': 'assets/profile_images/cat.png'},
    {'name': 'GrowthGenius Ventures', 'imageUrl': 'assets/profile_images/cat.png'},
    {'name': 'LaunchPad Innovations', 'imageUrl': 'assets/profile_images/cat.png'},
    {'name': 'Prodigy Enterprises', 'imageUrl': 'assets/profile_images/cat.png'},
    {'name': 'Nexus Innovations Co.', 'imageUrl': 'assets/profile_images/cat.png'},
    {'name': 'Apex Ventures Group', 'imageUrl': 'assets/profile_images/cat.png'},
    {'name': 'Catalyst Creations', 'imageUrl': 'assets/profile_images/cat.png'},
    {'name': 'Visionary Ventures Inc.', 'imageUrl': 'assets/profile_images/cat.png'},
    {'name': 'Momentum Labs', 'imageUrl': 'assets/profile_images/cat.png'},
    {'name': 'Pinnacle Ventures Ltd.', 'imageUrl': 'assets/profile_images/cat.png'},
  ];

  List<Map<String, String>> _filteredResults = [];

  @override
  void initState() {
    super.initState();
    _filteredResults = _searchResults;
  }

  void _filterSearchResults(String query) {
    setState(() {
      _filteredResults = _searchResults
          .where((result) => result['name']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () {
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>BottomNavigationBarExample()));
          },
        ),
        title: TextField(
          onChanged: _filterSearchResults,
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            fillColor: Colors.grey.shade200,
            filled: true,
          ),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        itemCount: _filteredResults.length,
        itemBuilder: (context, index) {
          final username = _filteredResults[index]['name'];
          final imageUrl = _filteredResults[index]['imageUrl'];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(imageUrl!),
            ),
            title: Text(username!),
            onTap: () {
              // Handle tapping on a search result
            },
          );
        },
      ),
    );
  }
}
