import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My profile Card'),
        ),
        body: Center(
          child: ProfileCard(),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Avatar section
            CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'images\WhatsApp Image 2023-03-02 at 1.33.27 PM.jpeg')),
            SizedBox(height: 10),

            // Name section
            Text(
              'Hameed Khan',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),

            // Bio section
            Text(
              'A passionate developer who loves coding cs-22.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),

            // Action buttons row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Follow Button
                ElevatedButton(
                  onPressed: () {
                    // Handle Follow action
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: Colors.blue,
                  ),
                  child: Text('Follow'),
                ),
                SizedBox(width: 10),

                // Message Button
                ElevatedButton(
                  onPressed: () {
                    // Handle Message action
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: Colors.green,
                  ),
                  child: Text('Message'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
