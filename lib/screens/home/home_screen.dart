import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'logout') {
                Navigator.pushReplacementNamed(context, '/login');
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'logout',
                  child: Row(
                    children: [
                      Icon(Icons.exit_to_app),
                      SizedBox(width: 10),
                      Text('Logout'),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/welcome.webp',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.pets),
                  title: Text('View Pets'),
                  onTap: () => Navigator.pushNamed(context, '/pet-list'),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Your Profile'),
                  onTap: () => Navigator.pushNamed(context, '/profile'),
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text('Add Your Pet'),
                  onTap: () => Navigator.pushNamed(context, '/add-pet'),
                ),
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Find a Partner'),
                  onTap: () => Navigator.pushNamed(context, '/find-partner'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
