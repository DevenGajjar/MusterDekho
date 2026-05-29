// Whats App Clone

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  var arrName = [
    'user 1','user 2','user 3','user 4','user 5','user 6','user 7','user 8'
  ];

  @override
Widget build(BuildContext context) {
  return Scaffold(

        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 47, 179, 65),
          title: Text("Whats App"),
          centerTitle: true,
        ),

      body: ListView.separated(itemBuilder: (context, index) {
        
        return ListTile(
          leading: CircleAvatar(
            radius: 30,
              backgroundImage: AssetImage(
                  'assets/images/profile.png',
              ),
             ),
             
          title: Text(arrName[index]),
          subtitle: Text("+91 123-456-789"),
          trailing: Icon(Icons.more)
          );
      },
      itemCount:arrName.length,
      separatorBuilder: (context, index) {
        return Divider( height: 50,);
      },
      ),
      

        bottomNavigationBar: NavigationBar(
          backgroundColor: Color.fromARGB(255, 126, 126, 126),

            selectedIndex: selectedIndex,

            onDestinationSelected: (int value) {
                setState(() {
                selectedIndex = value;
              });
            },

          destinations: [

            NavigationDestination(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),

            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
    );
  }
}