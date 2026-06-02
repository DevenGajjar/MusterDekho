import 'package:flutter/material.dart';

class spotifyhome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      extendBodyBehindAppBar: true,

      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Text(
          "Good Morning...",

          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        actions: [

          Padding(
            padding: EdgeInsets.only(right: 8),

            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),

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

        child: Padding(

          padding: EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),

          child: Column(

            children: [

              GridView.count(

                crossAxisCount: 2,

                shrinkWrap: true,

                physics: NeverScrollableScrollPhysics(),

                crossAxisSpacing: 10,
                mainAxisSpacing: 10,

                childAspectRatio: 3,

                children: [

                  Container(

                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(

                      children: [

                        ClipRRect(

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),

                          child: Image.asset(
                            'assets/images/pic1.jpg',

                            width: 60,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "Today's Top Hits",

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(

                      children: [

                        ClipRRect(

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),

                          child: Image.asset(
                            'assets/images/cat.jpg',

                            width: 60,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "Your Playlist",

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(

                      children: [

                        ClipRRect(

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),

                          child: Image.asset(
                            'assets/images/cat.jpg',

                            width: 60,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "All Time Hits",

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(

                      children: [

                        ClipRRect(

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),

                          child: Image.asset(
                            'assets/images/cat.jpg',

                            width: 60,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "Best",

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(

                      children: [

                        ClipRRect(

                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),

                          child: Image.asset(
                            'assets/images/pic1.jpg',

                            width: 60,
                            height: double.infinity,

                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "Daily Explore",

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

          
            Align(
              alignment: Alignment.centerLeft,
              
              child: Text("Made For You",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            )








            ],
          ),
        ),
      ),
    );
  }
}