import 'package:flutter/material.dart';
import 'settings_page.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

  body: Container(

    width: double.infinity,
    height: double.infinity,

    decoration: BoxDecoration(

            gradient: LinearGradient(

              begin: Alignment.bottomCenter,
              end: Alignment.topLeft,

              colors: [
                Colors.black,
                Colors.green,
              ],

              stops: [0.5, 1],
            ),
          ),

      child: SafeArea(

  child: Padding(

  padding: EdgeInsets.only(
    top: 10,
    left: 10,
    right: 10,
  ),

  child: Row(
      
      crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(
            "Search",

            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          IconButton(
            onPressed: () {
              Navigator.push(
                context,

                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },

            icon: Icon(Icons.settings, color: Colors.white, size: 30),
          ),
        ],
      ),
                  ),
      ),
  ),
    );
  }
}
