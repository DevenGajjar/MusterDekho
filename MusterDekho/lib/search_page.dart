import 'dart:math';

import 'package:flutter/material.dart';
import 'Settings_Page.dart';

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

            colors: [Colors.black, Colors.green],

            stops: [0.5, 1],
          ),
        ),

        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),

            child: Column(
              children: [
                // TOP BAR
                Row(
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

                          MaterialPageRoute(
                            builder: (context) => SettingsPage(),
                          ),
                        );
                      },

                      icon: Icon(Icons.settings, color: Colors.white, size: 30),
                    ),
                  ],
                ),

                // SEARCH BAR
                SizedBox(height: 20),

                TextField(
                  style: TextStyle(color: Colors.white),

                  decoration: InputDecoration(
                    hintText: "What do you want to listen to?",

                    hintStyle: TextStyle(color: Colors.white54),

                    prefixIcon: Icon(Icons.search, color: Colors.white),

                    filled: true,

                    fillColor: Colors.black54,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),

                      borderSide: BorderSide.none,
                    ),
                  ),
                ),


                // made for you
                SizedBox(height: 20),

                GridView.count(

                  physics: NeverScrollableScrollPhysics(),


                  crossAxisCount: 2,

                  shrinkWrap: true,

                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,

                  childAspectRatio: 2,

                  children: [
                    // card - 1
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),

                          child: Image.asset(
                            'assets/images/pcrc1.jpg',

                            width: double.infinity,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,

                              colors: [
                                Colors.black.withOpacity(0.5),

                                Colors.transparent,

                                Colors.black.withOpacity(0.4),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(10),

                          child: Text(
                            "Pop",

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // card - 2
                                        Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),

                          child: Image.asset(
                            'assets/images/pcrc2.jpg',

                            width: double.infinity,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,

                              colors: [
                                Colors.black.withOpacity(0.5),

                                Colors.transparent,

                                Colors.black.withOpacity(0.4),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(10),

                          child: Text(
                            "Indie",

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //card - 3
                                        Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),

                          child: Image.asset(
                            'assets/images/pcrc3.jpg',

                            width: double.infinity,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,

                              colors: [
                                Colors.black.withOpacity(0.5),

                                Colors.transparent,

                                Colors.black.withOpacity(0.4),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(10),

                          child: Text(
                            "Bollywood",

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
