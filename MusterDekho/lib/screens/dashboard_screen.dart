import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Main Menu'),
        centerTitle: true,
      ),

      bottomNavigationBar: NavigationBar(
        backgroundColor: Color.fromARGB(255, 126, 126, 126),

        destinations: [

          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),

    drawer: Drawer(
      backgroundColor: Colors.grey,
      child:SafeArea(
        child: Column(
          children: [
            DrawerHeader(
              child: Text("About",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
      ),
      

            ListTile(
              title: Text("Profile"),
            ),
          ],
        ),
      ),
     ),
    );
  }
}