import 'package:flutter/material.dart';
import 'pages/photos_page.dart';
import 'pages/profile_page.dart';
import 'pages/folders_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int selectIndex = 0;

  final List<Widget> _pages = [
    PhotosPage(),
    FoldersPage(),
    Center(child: Text("Fav", style: TextStyle(fontSize: 28))),
    ProfilePage(),
    
  ];

  void navigate(int id) {
    setState(() {
      selectIndex = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text("My Gallery"),
        ),

        body: _pages[selectIndex],

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey,
          currentIndex: selectIndex,
          onTap: navigate,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: "Photos"),
            BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Folders"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}