import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(

          gradient: LinearGradient(

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

            colors: [
              Colors.grey,
              Colors.black,
            ],
          ),
        ),

        child: SafeArea(

          child: Padding(

            padding: EdgeInsets.all(20),

            child: Column(

              children: [

                // TOP ROW

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),

                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // PROFILE IMAGE

                CircleAvatar(

                  radius: 60,

                  backgroundImage: AssetImage(
                    'assets/images/cat.jpg',
                  ),
                ),

                SizedBox(height: 20),

                // NAME

                Text(
                  "Deven Gajjar",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                // BUTTON

                Container(

                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  ),

                  decoration: BoxDecoration(

                    color: Colors.white24,

                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: Text(
                    "Edit Profile",

                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 40),

                // STATS

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [

                    Column(

                      children: [

                        Text(
                          "10",

                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "Playlists",

                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),

                    Column(

                      children: [

                        Text(
                          "32",

                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "Followers",

                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),

                    Column(

                      children: [

                        Text(
                          "30",

                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "Following",

                          style: TextStyle(
                            color: Colors.grey,
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