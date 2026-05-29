import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/pic1.jpg'),
          ),

          SizedBox(height: 20),

          // Name
          Text(
            "D :)",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 8),

          // Age
          Text(
            "gmail: abc@gmail.com",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),

          SizedBox(height: 40),

          // Logout Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
            onPressed: () {},
            child: Text(
              "Log Out",
              style: TextStyle(fontSize: 18),
            ),
          ),

        ],
      ),
    );
  }
}