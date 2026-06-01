import 'package:flutter/material.dart';
import 'login_page.dart';
import 'spotifyhome.dart';

void main() {
  runApp(MySpotifyApp());
}

class MySpotifyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(

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

          child: LoginPage(),
        ),
      ),
    );
  }
}