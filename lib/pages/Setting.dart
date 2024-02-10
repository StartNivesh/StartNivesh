import 'package:flutter/material.dart';
import 'package:start_nivesh/HomeScreen.dart';
import 'package:start_nivesh/pages/LoginScreen.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        elevation: 0, // Remove app bar shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
        ),
      ),
      body: ListView(
        children: [
          _buildSettingItem(
            title: 'Account',
            icon: Icons.account_circle,
            onTap: () {
              // Handle account settings
            },
          ),
          _buildSettingItem(
            title: 'Privacy',
            icon: Icons.lock,
            onTap: () {
              // Handle privacy settings
            },
          ),
          _buildSettingItem(
            title: 'Notifications',
            icon: Icons.notifications,
            onTap: () {
              // Handle notifications settings
            },
          ),
          _buildSettingItem(
            title: 'Messaging',
            icon: Icons.message,
            onTap: () {
              // Handle messaging settings
            },
          ),
          _buildSettingItem(
            title: 'Network',
            icon: Icons.people,
            onTap: () {
              // Handle network settings
            },
          ),
          _buildSettingItem(
            title: 'Accessibility',
            icon: Icons.accessibility,
            onTap: () {
              // Handle accessibility settings
            },
          ),
          _buildSettingItem(
            title: 'Data Management',
            icon: Icons.storage,
            onTap: () {
              // Handle data management settings
            },
          ),
          _buildSettingItem(
            title: 'Language',
            icon: Icons.language,
            onTap: () {
              // Handle language settings
            },
          ),
          _buildSettingItem(
            title: 'Help & Support',
            icon: Icons.help,
            onTap: () {
              // Handle help & support settings
            },
          ),
          _buildSettingItem(
            title: 'Sign Out',
            icon: Icons.exit_to_app,
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              // Handle sign out
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 28,
              color: Colors.blue,
            ),
            SizedBox(width: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
