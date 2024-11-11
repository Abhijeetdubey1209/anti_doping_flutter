import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
            SizedBox(height: 16),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text('Level 3 Athlete'),
            SizedBox(height: 24),
            Card(
              child: ListTile(
                leading: Icon(Icons.emoji_events),
                title: Text('Achievements'),
                trailing: Text('12'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text('Points'),
                trailing: Text('2500'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.school),
                title: Text('Completed Modules'),
                trailing: Text('5'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}