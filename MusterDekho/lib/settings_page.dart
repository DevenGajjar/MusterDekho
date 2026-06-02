import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Text("Profile", style: TextStyle(color: Colors.white)),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topLeft,

            colors: [Colors.black, Colors.green],

            stops: [0.5, 1],
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              CircleAvatar(
                radius: 60,

                backgroundImage: AssetImage('assets/images/pic1.jpg'),
              ),

              SizedBox(height: 20),

              Text(
                "Deven Gajjar",

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30),

              SizedBox(
                width: 200,
                height: 50,

                child: FilledButton(
                  style: FilledButton.styleFrom(backgroundColor: Colors.red),

                  onPressed: () {},

                  child: Text(
                    "Logout",

                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
